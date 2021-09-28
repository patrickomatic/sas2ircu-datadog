package main

import (
  "github.com/patrickomatic/health/internal/datadog"
  "github.com/patrickomatic/health/internal/sas2ircu"
  "regexp"
)

func main() {
  slotLineRegex := regexp.MustCompile(`^\s*Slot\s+#\s+:\s+(\d+)`)

  sas2ircu.Display(func (line string) {
    matches := slotLineRegex.FindStringSubmatch(line)
    if len(matches) > 1 {
      datadog.SendSet("system.raid.active_slots", matches[1])
    }
  })
}

