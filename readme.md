# 🎬 Proyecto de Evaluación – Extracción, Carga y Consulta de Datos de Películas

# 📌 Descripción General
Este proyecto forma parte de la evaluación final del módulo de **Data Analytics**, y demuestra el flujo completo **ETL + SQL avanzado**, utilizando API, Python, MySQL y consultas sobre la base de datos Sakila.

Incluye:
- 🔹 Extracción de datos desde API
- 🔹 Limpieza y transformación con pandas
- 🔹 Creación y carga de tablas MySQL
- 🔹 Consultas SQL analíticas y avanzadas (JOIN, REGEXP, GROUP BY…)

---

# ⚙️ 1. Requisitos del Sistema

## 🔧 1.1. Software Necesario
- **Python 3.13**
- **MySQL Server**
- **MySQL Workbench** (recomendado)

### 📥 Clonar el repositorio
```bash
git clone https://github.com/usuario/proyecto-peliculas.git
```

---

## 📦 1.2. Dependencias de Python
```bash
pip install pandas requests mysql-connector-python
```

### ▶️ Ejecución de Scripts
```bash
python extract.py
python insert_data.py
```

---

# 📁 2. Estructura del Proyecto
```
📂 proyecto-peliculas
│
├── README.md
├── Ejercicio1.pynb
├── Ejercicio1_Evaluacion_Final_Consultas.sql
└── Ejercicio2_Evaluación_Final.sql
```

---

# 🚀 3. Guía de Ejecución

## 🐬 3.1. Configuración de MySQL
```python
host='127.0.0.1'
user='root'
password='AlumnaAdalab'
```

---

# 🎥 4. Ejercicio 1: Base de Datos de Películas (ETL Completo)

## 🔹 Fase 1 — Extracción
Se realiza una petición a la API de Adalab para obtener películas.

---

## 🔹 Fases 2 y 3 — Creación e Inserción en MySQL
Creación de DB **Adalab_pelis** y tabla `peliculas`.

---

## 🔹 Fase 4 — Consultas SQL, con DER
Incluye agregaciones, filtros, patrones y estadísticas.

---

# 🎬 5. Ejercicio 2: SQL Avanzado con Sakila
Consultas avanzadas utilizando múltiples JOINs, REGEXP y cálculos agregados.

---

# 📊 6. Resultados Destacados
- ✔️ Más de 100 películas cargadas correctamente en MySQL
- ✔️ Flujo ETL automatizado con Python
- ✔️ Consultas avanzadas que combinan hasta 4 tablas
- ✔️ Estadísticas agregadas (duración media, recuentos por género y año)

---

# 📞 Contacto
Si deseas más información o quieres mejorar este proyecto:
**Cristina Aragón de la cruz
cristinaragon77@gmail.com**

---

