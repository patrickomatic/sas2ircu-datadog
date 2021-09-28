# sas2ircu-datadg

A couple commands for hooking up the [sas2ircu](https://docs.broadcom.com/doc/12353380) utility
so it can fire [Datadog](https://www.datadoghq.com/) metrics.

# Commands

* `raid_active_slots` - number of slots active on the raid array. Reported as `system.raid.active_slots`

* `raid_state` - overall healthy state of the raid array.  Sent to datadog as `system.raid.volume_state`

* `raid_hd_count` - count of total number of drives.  Sent as `system.raid.hard_drive_count`
