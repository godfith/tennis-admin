# 固定团课 / 自组团课 改造报告（2026-11-19，时区 UTC+8）

本批只改本机源码并写预览 SQL，**未在 goat_prod 执行任何 UPDATE / INSERT / ALTER / DELETE**，也未部署云函数、未重发后台或小程序。

团课仍是同一套管课，只是增加类型（固定 / 自组）和可配置规则。旧课没有类型或主题时，按固定团课处理，原有报名、扣次、跨店、临时加人、自动取消逻辑保留。

## 预览 SQL（请先在 DBeaver 对 goat_prod 按节执行）

文件：

- 盒子：`/workspace/gc-fixed-self-20261119/sql/PREVIEW_group_class_fixed_self_20261119.sql`
- 本机（同步后）：`D:\山羊goat项目\tennis-admin\PREVIEW_group_class_fixed_self_20261119.sql`

顺序：

1. 第 1 节只读预览现有门店、杨箕场地和字段是否已存在。
2. 第 2 节创建 `app_settings`，并在还没有 `group_class` 这条配置时写入默认值。
3. 第 3 节给 `venues` 增加 `booking_enabled` / `is_shell`，给 `group_classes` 增加 `class_type` / `theme`。列已存在时 ALTER 会报重复列，可忽略并继续。
4. 第 4 节把已有 `venue_yangji` 标成空壳（不新建、不改名）；幂等插入 `venue_weisha`（名称「温莎大石店」）并标空壳。
5. 第 5 节给杨箕、温莎各加一块内部场地「团课1号场」（`customer_visible=0`）。**不会使用现有名称正好是「外场」的虚拟场。**杨箕原来的「外场」仍留给教练排课。
6. 第 6 节复核。

默认配置：轮转顺序为 花地湾 → 海心沙 → 中大 → 陈家祠 → 木兰杨箕（`venue_yangji`）→ 温莎；山羊店 2–4 人，温莎 3–6 人（可在后台改成 3–8）；固定课默认随时报；自组默认提前 2 天；自动取消默认提前 2 小时。轮转起始日默认 `2026-11-16`（周一），循环周期等于参与轮转的门店数，没有休息日，同一星期几下一周会换店。这些都可以在后台「团课设置」里改。

## FN_VER

| 云函数 | 新 FN_VER | 是否要部署 | 说明 |
|---|---|---|---|
| userApi | `userApi-20261119b` | 是 | 在现网 `userApi-20261119a`（mycards 修复）上迭代。团课列表/活动日历返回 `classType`/`theme`/`enrollOpen`/`enrollClosedReason`；用户报名校验自组提前天数；`getVenues` 默认不返回空壳馆；`getCourts`/`getSchedule`/`createBooking`/`getVenueHours`/`getCourtPrices` 拦截空壳馆普通订场。未回退 getMyCards / 激活 / 订场校验。 |
| adminSaveGroupClass | `saveGroupClass-20261119a` | 是 | 排课可写类型和主题；`getSettings` / `saveSettings` / `generateRotation`；新增/编辑缺新列时会回退到旧字段，避免先部署后跑 SQL 时直接报错。 |
| adminGetGroupClasses | `getGroupClasses-20261119a` | 是 | 返回类型、主题、报名门槛和当前设置；支持按类型筛选；增加 `action=ver` 以免误触发列表和惰性自动取消。 |
| adminGetVenues | `getVenues-20261119a` | 是 | 返回 `bookingEnabled` / `isShell`。后台仍列出空壳馆，便于排团课。 |
| adminEnrollGroupClass | 仍为 `enrollGroup-20261117a` | 不必 | 后台临时加人、满员加人、已取消恢复后加人保持原逻辑，不套用自组提前天数。 |
| adminGetGroupEnrollments | 仍为 `getGroupEnrollments-20261112c` | 不必 | 名单字段未改。 |
| adminSaveBooking | 仍为 `saveBooking-20261119a` | 不必 | 未改，外场跳过标价的逻辑仍在线上。 |
| adminAutoCancelGroupClasses | 仍为 `autoCancelGroup-20261112c` | 不必 | 仍按每节课自己的 `min_enrollment` / `cancel_before_hours` 取消。 |

## 部署步骤

1. 先在 DBeaver 按上面顺序执行预览 SQL。建议先跑第 1 节，确认杨箕仍是 `venue_yangji`、还没有第二个杨箕馆，再跑后面几节。
2. 部署云函数（必须整目录上传，不要只传 `index.js`）：
   - `userApi`：务必带上同目录的 `groupClassSettings.js`、`venueBookingRule.js`，以及原有的 `groupClassAutoCancel.js`、`cardActivateHelper.js`、`courtTypeRule.js`、`expireDueCards.js`、`package.json`。
   - `adminSaveGroupClass`：带上 `groupClassSettings.js`、`package.json`。
   - `adminGetGroupClasses`：带上 `groupClassSettings.js`、`groupClassAutoCancel.js`、`package.json`。
   - `adminGetVenues`：带上 `venueBookingRule.js`、`package.json`。
3. **要重发后台前端**：`tennis-admin` 执行 `npm run build` 后按现有方式发布。本次含「团课排期」的设置、生成轮转、类型和主题。
4. **要重发小程序**：至少包含 `pages/group/group`、`pages/index/index`、`pages/booking/booking`。否则课表上看不到类型/主题，团课筛选里也可能暂时没有杨箕/温莎（课还在「全部」里）。空壳馆不出现在普通订场这件事，在 `userApi` 上线后即使旧版小程序也会生效。

没有新建云函数，也不需要为这批去改 expire-timer。

## 改动文件清单

后台 / 云函数（相对 `D:\山羊goat项目\tennis-admin`）：

- `src/views/GroupClasses.vue`
- `cloudfunctions/adminSaveGroupClass/index.js`
- `cloudfunctions/adminSaveGroupClass/groupClassSettings.js`（新）
- `cloudfunctions/adminGetGroupClasses/index.js`
- `cloudfunctions/adminGetGroupClasses/groupClassSettings.js`（新）
- `cloudfunctions/adminGetVenues/index.js`
- `cloudfunctions/adminGetVenues/venueBookingRule.js`（新）
- `cloudfunctions/userApi/index.js`
- `cloudfunctions/userApi/groupClassSettings.js`（新）
- `cloudfunctions/userApi/venueBookingRule.js`（新）
- `PREVIEW_group_class_fixed_self_20261119.sql`（新，给手工执行）

小程序（相对 `D:\山羊goat项目\网球场馆小程序_uni`）：

- `pages/group/group.vue`
- `pages/index/index.vue`
- `pages/booking/booking.vue`

盒子报告：`/workspace/gc-fixed-self-20261119/REPORT.md`

## 兼容说明

- 前后端统一用驼峰：`classType`（`fixed` / `self`）、`theme`、`enrollOpen`、`enrollClosedReason`、`classTypeLabel`、`selfOrganizeAdvanceDays`、`fixedOpenAnytime`。库里是 `class_type` / `theme`。旧行没有类型时当 `fixed`。
- 用户端报名（`userApi.enrollGroupClass`）和后台报名（`adminEnrollGroupClass`）参数名未改：仍是 `groupClassId`、`cardId`、`userId`、`userName`、`phone`、`seats`。旧端读不到新字段也不会报错，只是看不到类型/主题。
- 用户端满员仍不能报；自组课若不足提前天数，会明确提示「自组团课需提前N天报名」。后台不受提前天数限制，成团后仍可加人直到满班，也可临时加人。
- 一个账号扣 2 节、修改使用时间、跨店报名、成员标门店、开课前人数不足自动取消，都还在原来的链路上。
- 小程序首页活动日历点团课仍进入 `/pages/group/group?classId=&date=` 报名。
- `getVenues` 默认不返回空壳馆（订场、首页切馆、注册选馆都不会出现杨箕/温莎）。团课页会传 `includeShell: true`，所以课表筛选里还能看到这两家。团课本身仍可跨店报名。
- 若客人本地还记着杨箕作为订场馆，订场页会提示改选可订场门店。
- 生成轮转排期按设置计算每天的门店，已有相同门店+日期+时段且未取消的课会跳过，避免重复生成。没有可用内部场地（或还没跑空壳 SQL）的日期也会跳过并说明原因。
- 设置表还不存在时，云函数会用内置默认值，不至于读失败；保存设置前需要先跑 SQL。

## 本批明确没做

客人自助发起组团、expire-timer、财务字段、纯网球无发球机、店长操作日志。温莎人数最终是 3–6 还是 3–8，留给后台设置，没有写死。
