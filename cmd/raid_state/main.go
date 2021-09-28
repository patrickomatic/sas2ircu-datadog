package main

import (
  "github.com/patrickomatic/health/internal/datadog"
  "github.com/patrickomatic/health/internal/sas2ircu"
  "regexp"
  "strings"
)

func main() {
  volumeStateRegex := regexp.MustCompile(`^\s*Volume\s+state\s+:\s+(\w+)`)
  sas2ircu.Status(func (line string) {
    matches := volumeStateRegex.FindStringSubmatch(line)
    if len(matches) > 1 {
      datadog.SendSet("system.raid.volume_state", strings.ToLower(matches[1]))
    }
  })
}
