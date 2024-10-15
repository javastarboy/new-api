#!/bin/bash

go mod download
go build -ldflags "-s -w" -o one-api

# 运行后端
chmod u+x one-api
./one-api --port 3000 --log-dir ./logs