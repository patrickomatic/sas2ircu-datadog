#!/bin/bash

if [[ "$2" = "DISPLAY" ]]; then
  cat <<__EOF
LSI Corporation SAS2 IR Configuration Utility.
Version 20.00.00.00 (2014.09.18)
Copyright (c) 2008-2014 LSI Corporation. All rights reserved.

Read configuration has been initiated for controller 0
------------------------------------------------------------------------
Controller information
------------------------------------------------------------------------
  Controller type                         : SAS2008
  BIOS version                            : 7.39.02.00
  Firmware version                        : 20.00.07.00
  Channel description                     : 1 Serial Attached SCSI
  Initiator ID                            : 0
  Maximum physical devices                : 255
  Concurrent commands supported           : 1720
  Slot                                    : 2
  Segment                                 : 0
  Bus                                     : 4
  Device                                  : 0
  Function                                : 0
  RAID Support                            : Yes
------------------------------------------------------------------------
IR Volume information
------------------------------------------------------------------------
IR volume 1
  Volume ID                               : 286
  Status of volume                        : Okay (OKY)
  Volume wwid                             : 07078b5726e0b457
  RAID level                              : RAID1E
  Size (in MB)                            : 3334520
  Physical hard disks                     :
    PHY[0] Enclosure#/Slot#                 : 1:0
  PHY[1] Enclosure#/Slot#                 : 1:1
  PHY[2] Enclosure#/Slot#                 : 1:2
  PHY[3] Enclosure#/Slot#                 : 1:4
  PHY[4] Enclosure#/Slot#                 : 1:5
  PHY[5] Enclosure#/Slot#                 : 1:6
  PHY[6] Enclosure#/Slot#                 : 1:7
------------------------------------------------------------------------
Physical device information
------------------------------------------------------------------------
Initiator at ID #0

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 0
  SAS Address                             : 4433221-1-0300-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S625NJ0R303765W
  GUID                                    : 5002538f31309ad0
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 1
  SAS Address                             : 4433221-1-0200-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S625NJ0R305593R
  GUID                                    : 5002538f3130a328
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 2
  SAS Address                             : 4433221-1-0100-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S6PTNJ0R607204D
  GUID                                    : 5002538f31607cd6
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 3
  SAS Address                             : 4433221-1-0000-0000
  State                                   : Ready (RDY)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S625NJ0R305512E
  GUID                                    : 5002538f3130a2d7
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 4
  SAS Address                             : 4433221-1-0700-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S6PTNJ0R607214E
  GUID                                    : 5002538f31607ce0
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 5
  SAS Address                             : 4433221-1-0600-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S6PTNJ0R607231T
  GUID                                    : 5002538f31607cf1
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 6
  SAS Address                             : 4433221-1-0500-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S625NJ0R305516X
  GUID                                    : 5002538f3130a2db
  Protocol                                : SATA
  Drive Type                              : SATA_SSD

Device is a Hard disk
  Enclosure #                             : 1
  Slot #                                  : 7
  SAS Address                             : 4433221-1-0400-0000
  State                                   : Optimal (OPT)
  Size (in MB)/(in sectors)               : 953869/1953525167
  Manufacturer                            : ATA
  Model Number                            : Samsung SSD 870
  Firmware Revision                       : 1B6Q
  Serial No                               : S6PTNJ0R607202N
  GUID                                    : 5002538f31607cd4
  Protocol                                : SATA
  Drive Type                              : SATA_SSD
------------------------------------------------------------------------
Enclosure information
------------------------------------------------------------------------
  Enclosure#                              : 1
  Logical ID                              : 500605b0:04744320
  Numslots                                : 8
  StartSlot                               : 0
------------------------------------------------------------------------
SAS2IRCU: Command DISPLAY Completed Successfully.
SAS2IRCU: Utility Completed Successfully.
__EOF

else
  cat <<__EOF
LSI Corporation SAS2 IR Configuration Utility.
Version 20.00.00.00 (2014.09.18)
Copyright (c) 2008-2014 LSI Corporation. All rights reserved.

Background command progress status for controller 0...
IR Volume 1
  Volume ID                               : 286
  Current operation                       : Synchronize
  Volume status                           : Enabled
  Volume state                            : Degraded
  Volume wwid                             : 07078b5726e0b457
  Physical disk I/Os                      : Not quiesced
  Volume size (in sectors)                : 1951170560
  Number of remaining sectors             : 1869473920
  Percentage complete                     : 4.19%
SAS2IRCU: Command STATUS Completed Successfully.
SAS2IRCU: Utility Completed Successfully.
__EOF
fi

