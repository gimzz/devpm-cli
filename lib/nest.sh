#!/usr/bin/env bash
set -euo pipefail

create_nest_project() {
  local name="$1"
  local docker="${2:-false}" 
  info "Creando proyecto NestJS real: $name"
  nest new "$name" --package-manager npm --skip-git
  cd "$name"

  if [[ "$docker" == "true" ]]; then
    info "Configurando Docker"

    if ask_yes_no "¿Deseas agregar PostgreSQL?"; then
      info "Agregando PostgreSQL"

      cp "$DEVPM_ROOT/templates/nest/docker/postgres/docker-compose.yml" docker-compose.yml
      cp "$DEVPM_ROOT/templates/nest/docker/postgres/env.example" .env

      sed -i "s/{{PROJECT_NAME}}/$name/g" docker-compose.yml .env
    else
      echo "APP_PORT=3000" > .env
    fi
  fi

  info "Inicializando Git"
  git init
  git add .
  git commit -m "chore: initial NestJS project"

  success "Proyecto $name creado correctamente ✅"
}

start_project() {
  local name=${1:-}
  local target_dir=""

  if [[ -z "$name" ]]; then
    target_dir="$PWD"
  else
    if [[ -d "$PWD/$name" ]]; then
      target_dir="$PWD/$name"
    elif [[ "$(basename "$PWD")" == "$name" ]]; then
      target_dir="$PWD"
    else
      error "El proyecto no existe"
    fi
  fi

  cd "$target_dir"

  [[ ! -f "package.json" ]] && error "No es un proyecto Node/Nest válido"

  info "Iniciando proyecto NestJS: $(basename "$target_dir")"
  npm run start:dev
}
