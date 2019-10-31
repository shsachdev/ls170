#!/bin/bash

function server () {
  while true
  do
    read method path version
    if [[$method = "GET"]]
    if [[$path ]]
    else
      echo 'HTTP/1.1 400 Bad Request'
    fi
  done
}

coproc SERVER_PROCESS { server; }

netcat -l -p 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]} # here I may need to run other netcat command since it did not work in the shell
