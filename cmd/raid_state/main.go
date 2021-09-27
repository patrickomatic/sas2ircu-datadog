package main

import (
  "fmt"
  "os/exec"
)

/*
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
*/

func main() {
  controller := "0"
  cmd := exec.Command("sas2ircu", controller, "DISPLAY")
	fmt.Println("poo poo %s", cmd)
}

