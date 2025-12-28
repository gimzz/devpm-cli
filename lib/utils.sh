#!/usr/bin/env bash

info() {
  echo -e "\033[1;34m[INFO]\033[0m $1"
}

success() {
  echo -e "\033[1;32m[SUCCESS]\033[0m $1"
}

error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1"
  exit 1
}

show_help() {
  cat <<EOF
devpm - Developer Project Manager (Bash)

Uso:
  devpm new nest <project-name>

Ejemplo:
  devpm new nest my-api
EOF
}
