#!/bin/bash

function server () {
  while true
  do
    read message
    echo "You said: $message"
  done
}

coproc SERVER_PROCESS { server; }

netcat -l -p 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]} # here I may need to run other netcat command since it did not work in the shell
