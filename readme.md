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
└── queries_sakila.sql      # Archivo SQL con las soluciones del Ejercicio 2 (Consultas Sakila).¡Claro que sí, Melanie! Un buen README.md es esencial para cualquier proyecto, especialmente para una evaluación, ya que demuestra que entiendes el flujo de trabajo completo.

Aquí tienes un README.md completo y bien estructurado que cubre ambas secciones de la evaluación, con todos los pasos necesarios para que tu proyecto sea fácil de entender y ejecutar.

🚀 Evaluación Final Módulo 2: Extracción de Datos y Consultas SQL (Movies DB & Sakila)
Este repositorio contiene la solución a la Evaluación Final del Módulo 2 de Adalab, que abarca la extracción de datos de una API, la creación y manipulación de una base de datos MySQL con Python, y la realización de consultas avanzadas en SQL.

⚙️ 1. Requisitos del Sistema
Para ejecutar este proyecto y replicar el entorno de la evaluación, necesitarás el siguiente software y librerías:

1.1. Software Base
Python 3.x: (Versión recomendada para scripts).

MySQL Server: (El motor de base de datos).

MySQL Workbench: (Opcional, pero recomendado para el Ejercicio 2 y la validación de consultas).

1.2. Dependencias de Python
Se requiere un entorno virtual con las siguientes librerías:

Bash

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

