package datadog

import (
  "fmt"
  "log"
  "net"
)

func sendMetric(metric string) {
  conn, err := net.Dial("udp", "127.0.0.1:8125")
  if err != nil {
    log.Fatalf("Error connecting to datadog: %s", err)
    return
  }
  fmt.Fprintf(conn, metric)
  conn.Close()
}

// TODO better tags, not hard-coded
func SendCount(metric string, value int) {
  sendMetric(fmt.Sprintf("%s:%d|c|#health", metric, value))
}

func SendSet(metric string, value string) {
  sendMetric(fmt.Sprintf("%s:%s|s|#health", metric, value))
}

func SendGauge(metric string, value int) {
  sendMetric(fmt.Sprintf("%s:%d|g|#health", metric, value))
}

func SendTimer(metric string, value int) {
  sendMetric(fmt.Sprintf("%s:%d|ms|#health", metric, value))
}

func SendHistogram(metric string, value int) {
  sendMetric(fmt.Sprintf("%s:%d|h|#health", metric, value))
}

func SendDistribution(metric string, value int) {
  sendMetric(fmt.Sprintf("%s:%d|d|#health", metric, value))
}
