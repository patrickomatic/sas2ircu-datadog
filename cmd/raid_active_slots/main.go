package main

import (
  "fmt"
  "github.com/patrickomatic/health/internal/datadog"
)

/*
for slot in `/home/health/bin/sas2ircu 0 DISPLAY | fgrep 'Slot #' | cut -d: -f2 | perl -pe 's/^\s*'` (<-- I had to edit this)
do
        /home/health/bin/dd_metric "system.raid.active_slots:$slot|s|#health"
done
*/
func main() {
  datadog.SendMetric("test")
}

