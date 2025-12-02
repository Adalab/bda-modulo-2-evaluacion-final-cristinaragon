⚙️ 1. Requisitos del Sistema

Para ejecutar este proyecto y replicar el entorno de la evaluación, necesitarás el siguiente software y librerías:

1.1. Software Base

Python 3.13

MySQL Server: (El motor de base de datos).

MySQL Workbench: (Opcional, pero recomendado para el Ejercicio 2 y la validación de consultas).

Además, necesitaremos antes de comenzar:

- Clonar el repositorio; git clone https://github.com/usuario/proyecto-peliculas.git

1.2. Dependencias de Python

Se requiere un entorno virtual con las siguientes librerías:

- pip install pandas requests mysql-connector-python

- Para ejecutar la extracción de datos: python extract.py

- Para insertar los datos en MYSQL: python insert_data.py



📂 2. Estructura del Proyecto
El proyecto se estructura de la siguiente manera:

 1. README.md               # Documento actual.
 2. Ejercicio1.pynb         #Script principal de Python.
    Para el Ejercicio 1 (Fases 1, 2 y 3).
 3. Ejercicio1_Evaluacion_Final_Consultas.sql   
   #Archivo SQL con las soluciones del Ejercicio 1 (Consultas Sakila).
 4. Ejercicio2_Evaluación_Final.sql #Soluciones del Ejercicio 2.

🏃 3. Guía de Ejecución

Sigue estos pasos para arrancar el proyecto en tu dispositivo

3.1. Configuración de MySQL

Antes de ejecutar el script de Python, debemos asegurarnos de que las credenciales de MySQL sean correctas;

host='127.0.0.1',
user='root',
password='AlumnaAdalab'


4. 📝 Resumen del Flujo de Trabajo

1. Ejercicio 1: Creación y Consulta de una Base de Datos de Películas 

Este ejercicio puso en práctica el flujo de trabajo completo de Extracción, Transformación y Carga utilizando Python y MySQL.

🔹 Fase 1: Extracción de Datos de Películas (Python)
Herramientas: requests (para la API), pandas (para el DataFrame).

Logro: Se consultó el endpoint de Adalab para obtener una lista de películas en formato JSON y se estructuró la información clave (título, año, duración, género, contenido adulto) en un DataFrame de Pandas.

🔹 Fase 2 y 3: Creación de la DB e Inserción de Datos (Python + MySQL)
Herramientas: mysql.connector (para la conexión), SQL.

Logro: Se estableció una conexión con el servidor MySQL. Se creó la base de datos Adalab_pelis y la tabla peliculas con el esquema adecuado (definiendo tipos de datos, PRIMARY KEY, etc.). Finalmente, los datos extraídos en el DataFrame se cargaron masivamente en la tabla de MySQL utilizando executemany.

🔹 Fase 4: Obtención de Información (SQL)
Herramientas: Consultas SQL (SELECT, COUNT, AVG, GROUP BY).

Logro: Se respondió a una serie de preguntas analíticas utilizando la base de datos, incluyendo el cálculo de promedios de duración, conteo de películas por año y género, y filtrado avanzado de texto (LIKE).

2. Ejercicio 2: Consultas Avanzadas sobre la Base de Datos Sakila
Este ejercicio se centró en demostrar el dominio de las sentencias SQL para la recuperación, el filtrado y la agregación de datos en un entorno de base de datos de ejemplo: Sakila.

🔹 Fase Única: Consultas SQL Complejas (MySQL Workbench)
Herramientas: Consultas SQL (SELECT, JOIN, GROUP BY, BETWEEN, LIKE, WHERE, REGEXP).

Logro: Se desarrollaron consultas que requirieron:

Filtrado Simple y Avanzado: Uso de WHERE, NOT IN, BETWEEN y REGEXP (para buscar patrones complejos como 'dog' o 'cat').

Agregación de Datos: Uso de COUNT() y AVG() con la cláusula GROUP BY para resumir datos por categorías (clasificación de películas, categorías de alquiler).

Unión de Tablas (JOIN): Se utilizó la cláusula JOIN (uniendo hasta cuatro tablas, como rental, inventory, film_category y category) para relacionar y obtener información sobre alquileres por cliente y categoría.