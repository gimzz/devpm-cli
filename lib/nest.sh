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
