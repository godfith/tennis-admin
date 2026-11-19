# adminSaveMemberCard

Previously this folder wrongly contained a copy of adminGetBookings (fnVer getBookings-20260928b).

As of 20261105b it is a real member-card save (save/disable/enable/pause), including price edit + card_price_adjust ledger.

Primary UI path remains: POST /adminGetUsers { action: 'saveMemberCard', ... }
This CF is kept so the CloudBase function name matches the operation if called directly.