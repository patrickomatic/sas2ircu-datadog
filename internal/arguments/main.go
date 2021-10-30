package arguments;

import (
  "flag"
  "strconv"
)

type ParsedArguments struct {
  Datadog bool
  RaidController string
}

func ParseArguments() ParsedArguments {
  datadogFlag := flag.Bool("datadog", false, "send metrics to datadog (default is stdout)")
  raidControllerFlag := flag.Int("raidController", 0, "raid controller number (default is 0)")

  flag.Parse()

  return ParsedArguments{
    Datadog: *datadogFlag,
    RaidController: strconv.Itoa(*raidControllerFlag),
  }
}
