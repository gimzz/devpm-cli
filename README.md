# DevPM - Developer Project Manager (CLI en Bash)

DevPM es un **CLI en Bash** que permite a los desarrolladores crear y administrar proyectos **NestJS de forma automática**, con Git inicializado, Docker (Si asi se le indica) y la estructura lista para desarrollo.

---

## 🔹 Qué hace DevPM-CLI

- Crear proyectos **NestJS reales** desde la terminal:

```bash
devpm new nest <nombre-proyecto>
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
npm run start:dev
devpm start <nombre-proyecto> (Modo desarrollo)
devpm new nest <nombre-proyecto> --docker 
```


## Beneficios para los desarrolladores

- Ahorro de tiempo: crea proyectos listos para desarrollo en segundos.
- Estandarización: todos los proyectos siguen la misma estructura y buenas prácticas.
- Aprendizaje: ejemplo de cómo crear un CLI modular en Bash, útil para DevOps y automatización.

---

## Próximas mejoras

- Gestión de múltiples stacks (Node.js, Java/Tomcat, React, Vue, etc.).