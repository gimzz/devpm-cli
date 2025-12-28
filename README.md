# DevPM - Developer Project Manager (CLI en Bash)

DevPM es un **CLI en Bash** que permite a los desarrolladores crear y administrar proyectos **NestJS de forma automática**, con Git inicializado y la estructura lista para desarrollo.  

---

## 🔹 Motivación

Siempre me llamó la atención cómo herramientas como `nest new` y otros CLI de frameworks mejoran la productividad de los desarrolladores.  
Quise crear un **CLI propio en Bash** que automatice la creación de proyectos NestJS, inicialice Git y permita que cualquier proyecto quede listo para empezar a trabajar de inmediato.  

---

## 🔹 Qué hace DevPM

- Crear proyectos **NestJS reales** desde la terminal:
  ```bash
  devpm new nest <nombre-proyecto>


---

## 🔹 Instalación

```bash
git clone https://github.com/gimzq/devpm.git
cd devpm
sudo ln -s "$(pwd)/bin/devpm" /usr/local/bin/devpm

---

## 🔹 Uso

```bash 
devpm new nest <nombre-proyecto>
cd <nombre-proyecto>    
npm run start:dev

---

## Beneficios para los desarrolladores

Ahorro de tiempo: crea proyectos listos para desarrollo en segundos.

Estandarización: todos los proyectos siguen la misma estructura y buenas prácticas.

Aprendizaje: ejemplo de cómo crear un CLI modular en Bash, útil para DevOps y automatización.


---

Proximas mejoras:

Comando devpm start <proyecto> para iniciar el proyecto automaticamente 
Dockerizacion automatica.
Gestion de multiples stacks (NodeJs, Java/tomcat, React, Vue, Etc.)