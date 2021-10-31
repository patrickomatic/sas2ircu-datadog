GOOS := linux

GOARCH := amd64

GO := env GOOS=$(GOOS) GOARCH=$(GOARCH) go

LIB_FILES := internal/arguments/main.go internal/sas2ircu/main.go internal/datadog/send_metric.go

all: cmd/raid_hd_count/raid_hd_count cmd/raid_state/raid_state cmd/raid_active_slots/raid_active_slots

cmd/raid_hd_count/raid_hd_count: cmd/raid_hd_count/main.go $(LIB_FILES)
	$(GO) build -o $@ cmd/raid_hd_count/main.go

cmd/raid_state/raid_state: cmd/raid_state/main.go $(LIB_FILES)
	$(GO) build -o $@ cmd/raid_state/main.go

cmd/raid_active_slots/raid_active_slots: cmd/raid_active_slots/main.go $(LIB_FILES)
	$(GO) build -o $@ cmd/raid_active_slots/main.go

clean: 
	rm -f cmd/raid_hd_count/raid_hd_count \
		cmd/raid_state/raid_state \
		cmd/raid_active_slots/raid_active_slots
