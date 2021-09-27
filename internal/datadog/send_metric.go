package datadog

import (
  "fmt"
  "net"
)

func SendMetric(metric string) {
  conn, err := net.Dial("udp", "127.0.0.1:8125")
  if err != nil {
    fmt.Printf("Error connecting to datadog: %v", err)
    return
  }
  fmt.Fprintf(conn, metric)
  conn.Close()
}
