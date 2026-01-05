# DevPM - Developer Project Manager (CLI en Bash)

DevPM es un **CLI en Bash** que permite a los desarrolladores crear y administrar proyectos **NestJS de forma automática**, con Git inicializado, Docker (Si asi se le indica) y la estructura lista para desarrollo.

---

## 🔹 Qué hace DevPM-CLI

- Crear proyectos **NestJS reales** desde la terminal:
- Puedes crear proyectos con Docker o sin Docker, dependiendo de tus necesidades. El comando `devpm new nest <nombre-proyecto> --docker` crea un proyecto con Dockerfile, docker-compose y .env y el comando `devpm new nest <nombre-proyecto>` crea un proyecto sin Docker, solo con un archivo .env.

```bash
devpm new nest <nombre-proyecto>
devpm new nest <nombre-proyecto> --docker
```

---

## 🔹 Instalación

```bash
git clone https://github.com/gimzq/devpm-cli.git
cd devpm-cli
sudo ln -s "$(pwd)/bin/devpm-cli" /usr/local/bin/devpm-cli
```

---

## 🔹 Uso

```bash
devpm new nest <nombre-proyecto>
cd <nombre-proyecto>
devpm start <nombre-proyecto> (Modo desarrollo)
```


## Beneficios para los desarrolladores

- Ahorro de tiempo: crea proyectos listos para desarrollo en segundos.
- Estandarización: todos los proyectos siguen la misma estructura y buenas prácticas.
- Aprendizaje: ejemplo de cómo crear un CLI modular en Bash, útil para DevOps y automatización.

---

## Próximas mejoras

- Gestión de múltiples stacks (Node.js, Java/Tomcat, React, Vue, etc.).