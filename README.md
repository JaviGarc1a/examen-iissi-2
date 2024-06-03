# Proyecto de examen

Este es un ejemplo creado al estilo de un examen de IISSI 2 para la carrera de Ingeniería Informática - Tecnologías Informáticas.

# Instalación

Clona el repositorio.

```bash
git clone git@github.com:JaviGarc1a/examen-iissi-2.git
```

Entra en el directorio.

```bash
cd examen-iissi-2
```

Recomendación de usar un entorno virtual de python.

```bash
python -m venv .venv
```

Para linux

```bash
source .venv/bin/activate
```

Para windows

```powershell
.venv/Scripts/activate.bat
```

Para la base de datos está la opción de usar el contenedor de Docker. En esta opción se recomienda cambiar el settings.py las variables de usuario y contraseña de conexión a la base de datos por el root/root o añadir otro usuario.

```bash
docker build -t mysql .
docker run -p 3306:3306 --name mysql -d mysql
```

# Mockups

En el [pdf](Mockups.pdf) puede ver los diferentes diseños a realizar.

# Credenciales

Usuario: alumno

Contraseña: Password123.

# Pasos para iniciar el servidor local

Primero creamos la base de datos, para ello ejecutamos el siguiente comando.

```bash
silence createdb
```

Luego, creamos todos los endpoints de las APIs.

```bash
silence createapi
```

Opcionalmente podemos crear también tests con el siguiente comando.

```bash
silence createtests
```

Finalmente, inicializamos el servidor.

```bash
silence run
```
