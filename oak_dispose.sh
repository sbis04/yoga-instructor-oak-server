#!/bin/bash

# Get process id
pid=$1

kill -9 $pid

echo "KILL: $pid"
