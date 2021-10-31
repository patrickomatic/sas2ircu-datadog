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
  slotLineRegex := regexp.MustCompile(`^\s*Slot\s+#\s+:\s+(\d+)`)

  sas2ircu.Display(args.RaidController, func (line string) {
    matches := slotLineRegex.FindStringSubmatch(line)
    if len(matches) > 1 {
      match := matches[1]
      if args.DatadogMetric != "" {
        datadog.SendSet(args.DatadogMetric, match)
      } else {
        fmt.Println(match)
      }
    }
  })
}

