#!/bin/bash

function server () {
  path1 = "/tiger.html"
  check1 = "./www/tiger.html"
  while true
  do
    read method path version
    if [[$method = "GET"]]
      if [[$path = path1 ]] &&
    elsif [[$m]]
      echo 'HTTP/1.1 400 Bad Request'
    else

    fi
  done
}

coproc SERVER_PROCESS { server; }

netcat -l -p 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]} # here I may need to run other netcat command since it did not work in the shell
