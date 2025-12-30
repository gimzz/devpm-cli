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
  cat <<'EOF'
DevPM - Developer Project Manager (NestJS)

Uso:
  devpm <comando> [opciones]

Comandos:
  new nest <nombre>   Crea un proyecto NestJS real
  start [nombre]      Inicia un proyecto NestJS (modo desarrollo)
  help                Muestra esta ayuda

Opciones:
  -h, --help, h, help           Mostrar esta ayuda

Ejemplos:
  devpm new nest my-api
  devpm start my-api
  devpm start

Repositorio:
  https://github.com/gimzz/devpm-cli
EOF
}
