package main

import (
  "github.com/patrickomatic/health/internal/datadog"
  "github.com/patrickomatic/health/internal/sas2ircu"
  "regexp"
)

func main() {
  hardDriveLineRegex, _ := regexp.Compile(`^Device\s+is\s+a\s+Hard\s+disk`)
  hdCount := 0
  sas2ircu.Display(func (line string) {
    if hardDriveLineRegex.MatchString(line) {
      hdCount += 1
    }
  })

  datadog.SendCount("system.raid.hard_disk_count", hdCount)
}

