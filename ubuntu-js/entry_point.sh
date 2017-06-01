#!/bin/bash

sudo -E /usr/local/bin/xvfb start

/bin/bash
NODE_PID=$!

trap shutdown SIGTERM SIGINT
wait $NODE_PID
