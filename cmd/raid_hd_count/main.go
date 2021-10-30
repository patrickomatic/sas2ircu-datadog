package main

import (
  "github.com/patrickomatic/health/internal/arguments"
  "github.com/patrickomatic/health/internal/datadog"
  "github.com/patrickomatic/health/internal/sas2ircu"
  "fmt"
  "regexp"
)

func main() {
  args := arguments.ParseArguments()

  hardDriveLineRegex, _ := regexp.Compile(`^Device\s+is\s+a\s+Hard\s+disk`)
  hdCount := 0
  sas2ircu.Display(args.RaidController, func (line string) {
    if hardDriveLineRegex.MatchString(line) {
      hdCount += 1
    }
  })

  if args.Datadog {
    datadog.SendCount("system.raid.hard_disk_count", hdCount)
  } else {
    fmt.Println(hdCount)
  }
}

