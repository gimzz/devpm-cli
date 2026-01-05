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

ask_yes_no() {
  local prompt="$1"
  local choice

  while true; do
    read -rp "$prompt (y/n): " choice
    case "$choice" in
      y|Y) return 0 ;;
      n|N) return 1 ;;
      *) echo "Por favor responde y o n" ;;
    esac
  done
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
  devpm new nest my-api # Crea un proyecto NestJS real sin Docker
  devpm new nest my-api --docker # Crea un proyecto con Dockerfile, docker-compose y .env
  devpm start my-api
  devpm start

Repositorio:
  https://github.com/gimzz/devpm-cli
EOF
}
