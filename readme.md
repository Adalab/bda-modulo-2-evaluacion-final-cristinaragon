⚙️ 1. Requisitos del Sistema

Para ejecutar este proyecto y replicar el entorno de la evaluación, necesitarás el siguiente software y librerías:

1.1. Software Base

Python 3.13

MySQL Server: (El motor de base de datos).

MySQL Workbench: (Opcional, pero recomendado para el Ejercicio 2 y la validación de consultas).

1.2. Dependencias de Python

Se requiere un entorno virtual con las siguientes librerías:

pip install pandas requests mysql-connector-python

📂 2. Estructura del Proyecto
El proyecto se estructura de la siguiente manera:

.
├── README.md               # Documento actual.
├── requirements.txt        # Dependencias de Python.
├── movies_etl.py           # Script principal de Python para el Ejercicio 1 (Fases 1, 2 y 3).
└── queries_sakila.sql      # Archivo SQL con las soluciones del Ejercicio 2 (Consultas Sakila).

🏃 3. Guía de Ejecución

Sigue estos pasos para arrancar el proyecto en tu dispositivo

3.1. Configuración de MySQL

Antes de ejecutar el script de Python, asegúrate de que tus credenciales de MySQL sean correctas.

host='127.0.0.1',
user='root',
password='AlumnaAdalab'

