# 🧠 Análisis de Factores de Riesgo en Salud Mental Juvenil

[![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-FFB81C?style=for-the-badge&logo=powerbi&logoColor=black)](https://drive.google.com/file/d/TU_ID_DE_DRIVE/view?usp=sharing)
[![Excel](https://img.shields.io/badge/Excel-Power_Query-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)](https://github.com/CamiAP/student-mental-health-dashboard/blob/main/Proyecto_Salud_Mental_Analisis.xlsx)
[![SQL](https://img.shields.io/badge/SQL-Consultas-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://github.com/CamiAP/student-mental-health-dashboard/blob/main/analisis_salud_mental.sql)

---

## 📌 El Problema de Negocio

Los trastornos de salud mental como ansiedad, depresión y ataques de pánico afectan de manera creciente a la población universitaria, impactando su rendimiento académico y calidad de vida.

**Pregunta central:** ¿Cuáles son los factores de riesgo que afectan la salud mental de los estudiantes y qué barreras les impiden buscar ayuda profesional?

---

## 📊 Fuente de Datos

- **Dataset:** "Student Mental Health" por [shariful07](https://www.kaggle.com/datasets/shariful07/student-mental-health) en Kaggle.
- **Descripción:** Encuesta a estudiantes universitarios con variables demográficas (edad, género, estado civil, carrera, año académico), de rendimiento (CGPA) y de salud mental (ansiedad, depresión, ataques de pánico, búsqueda de tratamiento).
- **Muestra final:** 100 registros luego de la limpieza.

---

## 🛠️ Herramientas y Proceso

### 1. Limpieza y Estandarización (Excel - Power Query)
Se utilizó Power Query para transformar los datos crudos. El proceso documentado incluyó:

- Promoción de encabezados y corrección de tipos de datos.
- Eliminación de columnas irrelevantes y filas con valores nulos en variables clave.
- Estandarización de valores categóricos (Yes/No).
- Unificación de grafías inconsistentes en nombres de carreras (ej: "Engine", "Engin" → "Engineering"; "Laws" → "Law").
- Manejo de códigos de carrera no interpretables, conservados como categorías independientes.
- Creación de variables auxiliares (rangos de edad, año de carrera en español, índices de prevalencia).

### 2. Análisis SQL
Se escribieron consultas exploratorias para calcular prevalencias, brechas de acceso y segmentaciones por condición. El archivo completo está disponible en [`analisis_salud_mental.sql`](https://github.com/CamiAP/student-mental-health-dashboard/blob/main/analisis_salud_mental.sql).

### 3. Dashboard Interactivo (Power BI)
Dashboard de 3 páginas. Para visualizarlo, descargar el archivo `.pbix` y abrirlo con Power BI Desktop (gratuito).

🔗 **[Descargar Dashboard .pbix](https://drive.google.com/file/d/13jPR0T8HON7xeOjpBeKeS_ekx9qvjZm4/view?usp=sharing)**

---

## 📸 Vistas del Dashboard

| Visión General | Factores de Riesgo | Brechas de Acceso |
| :---: | :---: | :---: |
| ![Página 1](https://github.com/CamiAP/student-mental-health-dashboard/blob/main/img/1.png?raw=true) | ![Página 2](https://github.com/CamiAP/student-mental-health-dashboard/blob/main/img/2.png?raw=true) | ![Página 3](https://github.com/CamiAP/student-mental-health-dashboard/blob/main/img/3.png?raw=true) |

---

## 📈 Estructura del Dashboard

| Página | Contenido | Objetivo |
| :--- | :--- | :--- |
| **Visión General** | KPIs de prevalencia, Top 10 carreras por trastorno, segmentación por género | Dimensionar el problema |
| **Factores de Riesgo** | CGPA, Estado Civil, Edad, Año de Carrera vs Síntomas | Identificar variables asociadas |
| **Brechas de Acceso** | Funnels de búsqueda de ayuda, porcentaje de estudiantes sin tratamiento | Visibilizar la barrera al tratamiento |

---

## 🔍 Insights Clave

### 1. Brecha Crítica de Acceso a Tratamiento
Solo el **4.5%** de estudiantes con ansiedad y el **9.2%** con depresión buscaron ayuda profesional. Más del **90%** de quienes presentan síntomas transitan la universidad sin tratamiento. Esto revela una oportunidad urgente para implementar tamizaje proactivo, soluciones digitales de bajo costo y campañas anti-estigma.

### 2. La Mitad de la Carrera es el Punto Más Vulnerable
El **segundo año** concentra el pico de ansiedad (**48.5%**), y el **tercer año** los picos de depresión y ataques de pánico (**41.7%** en ambos). Contrario a la idea de que el ingreso o el egreso son los momentos críticos, los datos sugieren que la mitad de la carrera es el período de mayor vulnerabilidad psicológica.

### 3. Estudiantes Casados: Mayor Prevalencia
Contrario a la hipótesis de que el matrimonio actúa como factor protector (apoyo emocional, estabilidad), los estudiantes casados reportaron mayor prevalencia en los tres trastornos. El equilibrio entre responsabilidades familiares, laborales y académicas podría generar una sobrecarga que supera los beneficios del apoyo conyugal en este grupo etario.

### 4. Ataques de Pánico y Rendimiento Académico
Los ataques de pánico se concentran en los rangos de CGPA más bajos: **33%** en el rango 0.00-1.99 y **50%** en el rango 2.00-2.49. En contraste, los rangos superiores a 3.00 no registraron este síntoma. Esto sugiere un impacto directo y severo sobre el desempeño académico, posiblemente por ausentismo, dificultad para rendir exámenes o abandono de materias.

### 5. Límites del Análisis
- Las carreras con mayor prevalencia aparente (Communication 100%, BIT, Marine Science) tienen muestras insuficientes (n≤3), por lo que no es posible afirmar diferencias significativas entre carreras.
- No se puede establecer causalidad con datos transversales. Existen hipótesis alternativas como la autoselección vocacional (personas con ciertas condiciones eligen carreras específicas).
- El cuarto año de carrera cuenta con solo 8 encuestados, limitando las conclusiones sobre el egreso.

---

## 🎨 Decisiones de Diseño

- **Paleta de colores:** Seleccionada para garantizar accesibilidad a personas con daltonismo (rojo-verde y azul-amarillo), verificada con Coolors.co.
- **Tipografía:** Segoe UI en todos los visuales para máxima legibilidad en pantalla.
- **Idioma:** Encabezados en español para audiencia hispanohablante; valores originales en inglés para fidelidad al dataset fuente.
- **Navegación:** Botones interactivos en las 3 páginas para cambiar entre vistas sin salir del dashboard.

---

## 📁 Estructura del Proyecto
