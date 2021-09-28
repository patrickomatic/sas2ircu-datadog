package sas2ircu

import (
  "bufio"
  "log"
  "os/exec"
)

const raidController = "0"

func runCommand(subCommand string, eachLineFn func (line string)) {
  cmd := exec.Command("sas2ircu", raidController, subCommand)
  stdout, err := cmd.StdoutPipe()
  if err != nil {
    log.Fatal(err)
  }

  err = cmd.Start()
  if err != nil {
    log.Fatalf("Error running sas2irc: %v", err)
  }

  stdin := bufio.NewScanner(stdout)
  for stdin.Scan() {
    eachLineFn(stdin.Text())
  }

  cmd.Wait()
}

func Display(eachLineFn func (line string)) {
  runCommand("DISPLAY", eachLineFn)
}

func Status(eachLineFn func (line string))  {
  runCommand("STATUS", eachLineFn)
}
