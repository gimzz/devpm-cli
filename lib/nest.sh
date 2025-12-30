#!/usr/bin/env bash

create_nest_project() {
  local name=$1
  local target_dir="$PWD/$name"

  [[ -d "$target_dir" ]] && error "El directorio ya existe: $name"

  info "Creando proyecto NestJS real: $name"

  if ! command -v nest >/dev/null 2>&1; then
    error "Nest CLI no encontrado. Instálalo con: npm i -g @nestjs/cli"
  fi


  nest new "$name" --skip-git --package-manager npm

  cd "$target_dir"


  info "Inicializando Git"
  git init >/dev/null
  git add .
  git commit -m "Initial NestJS project created by devpm" >/dev/null

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
