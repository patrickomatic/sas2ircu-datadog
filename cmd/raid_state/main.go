package main

import (
  "github.com/patrickomatic/health/internal/arguments"
  "github.com/patrickomatic/health/internal/datadog"
  "github.com/patrickomatic/health/internal/sas2ircu"
  "fmt"
  "regexp"
  "strings"
)

func main() {
  args := arguments.ParseArguments()
  
  volumeStateRegex := regexp.MustCompile(`^\s*Volume\s+state\s+:\s+(\w+)`)
  sas2ircu.Status(args.RaidController, func (line string) {
    matches := volumeStateRegex.FindStringSubmatch(line)

    if len(matches) > 1 {
      match := strings.ToLower(matches[1])

      if args.DatadogMetric != "" {
        // TODO verify that args.DatadogMetric has a "%s" in it or bomb out
        datadog.SendCount(fmt.Sprintf(args.DatadogMetric, match), 1)
      } else {
        fmt.Println(match)
      }
    }
  })
}
