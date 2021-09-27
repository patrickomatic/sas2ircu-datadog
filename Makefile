GO := go

all: cmd/raid_hd_count/raid_hd_count cmd/raid_state/raid_state cmd/raid_active_slots/raid_active_slots

cmd/raid_hd_count/raid_hd_count: cmd/raid_hd_count/main.go
	$(GO) build -o $@ $^

cmd/raid_state/raid_state: cmd/raid_state/main.go
	$(GO) build -o $@ $^

cmd/raid_active_slots/raid_active_slots: cmd/raid_active_slots/main.go
	$(GO) build -o $@ $^

clean: 
	rm -f cmd/raid_hd_count/raid_hd_count \
		cmd/raid_state/raid_state \
		cmd/raid_active_slots/raid_active_slots
