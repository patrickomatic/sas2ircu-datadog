package arguments;

import (
  "flag"
  "strconv"
)

type ParsedArguments struct {
  DatadogMetric string
  RaidController string
}

func ParseArguments() ParsedArguments {
  datadogMetricFlag := flag.String("datadogMetric", "", "send metrics to datadog using this name (default is stdout)")
  raidControllerFlag := flag.Int("raidController", 0, "raid controller number (default is 0)")

  flag.Parse()

  return ParsedArguments{
    DatadogMetric: *datadogMetricFlag,
    RaidController: strconv.Itoa(*raidControllerFlag),
  }
}
