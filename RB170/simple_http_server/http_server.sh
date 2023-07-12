#!/bin/bash

function server () {
  while true
  do
    message_arr=()
    check=true
    while $check
    do
      read line
      message_arr+=($line)
      if [[ "${#line}" -eq 1 ]]
      then
        check=false
      fi
    done
    method=${message_arr[0]}
    path=${message_arr[1]}
    if [[ $method = 'GET' ]]
    then
      if [[ -f "./www/$path" ]]
      then
        content_length=$(wc -c < "./www/$path")
        echo -en "HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: $content_length\r\n\r\n"; cat "./www/$path"; echo ""
      else
        echo -en 'HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n'
      fi
    else
      echo -en 'HTTP/1.1 400 Bad Request\r\nContent-Length: 0\r\n\r\n'
    fi
  done
}

coproc SERVER_PROCESS { server; }

nc -lkv 1234 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}
