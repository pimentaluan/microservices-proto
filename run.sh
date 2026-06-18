#!/usr/bin/env bash

set -euo pipefail

(
  cd order
  protoc     --go_out=.     --go-grpc_out=.     --go_opt=paths=source_relative     --go-grpc_opt=paths=source_relative     order.proto
)

(
  cd payment
  protoc     --go_out=.     --go-grpc_out=.     --go_opt=paths=source_relative     --go-grpc_opt=paths=source_relative     payment.proto
)
