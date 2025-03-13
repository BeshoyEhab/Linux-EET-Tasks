#!/bin/bash

while true; do
  echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\n\nJavaScript is bad for your health so we are using Bash" |
    socat - TCP-LISTEN:1984,reuseaddr
done
