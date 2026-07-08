-- =============================================
-- CONSULTAS SQL - ANÁLISIS DE SALUD MENTAL
-- Proyecto: Factores de Riesgo en Salud Mental Universitaria
-- Dataset: Student Mental Health (Kaggle - shariful07)
-- =============================================

-- 1. PREVALENCIA GENERAL DE TRASTORNOS
SELECT
    COUNT(*) AS Total_Encuestados,
    ROUND(AVG(CASE WHEN Ansiedad = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ansiedad,
    ROUND(AVG(CASE WHEN Depresion = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Depresion,
    ROUND(AVG(CASE WHEN Ataques_Panico = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ataques_Panico
FROM Datos_Limpios;

-- 2. BRECHA DE ACCESO A TRATAMIENTO
SELECT
    'Con Ansiedad' AS Condicion,
    COUNT(*) AS Total,
    SUM(CASE WHEN Busco_Ayuda = 'Yes' THEN 1 ELSE 0 END) AS Buscaron_Ayuda,
    ROUND(AVG(CASE WHEN Busco_Ayuda = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Tasa_Busqueda_Ayuda
FROM Datos_Limpios
WHERE Ansiedad = 'Yes'
UNION ALL
SELECT
    'Con Depresion' AS Condicion,
    COUNT(*) AS Total,
    SUM(CASE WHEN Busco_Ayuda = 'Yes' THEN 1 ELSE 0 END) AS Buscaron_Ayuda,
    ROUND(AVG(CASE WHEN Busco_Ayuda = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Tasa_Busqueda_Ayuda
FROM Datos_Limpios
WHERE Depresion = 'Yes';

-- 3. PREVALENCIA POR AÑO DE CARRERA
SELECT
    Ano_Carrera,
    COUNT(*) AS Total_Estudiantes,
    ROUND(AVG(CASE WHEN Ansiedad = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ansiedad,
    ROUND(AVG(CASE WHEN Depresion = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Depresion,
    ROUND(AVG(CASE WHEN Ataques_Panico = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ataques_Panico
FROM Datos_Limpios
GROUP BY Ano_Carrera
ORDER BY Ano_Carrera;

-- 4. PREVALENCIA POR RANGO DE EDAD
SELECT
    Rango_Edad,
    COUNT(*) AS Total_Estudiantes,
    ROUND(AVG(CASE WHEN Ansiedad = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ansiedad,
    ROUND(AVG(CASE WHEN Depresion = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Depresion,
    ROUND(AVG(CASE WHEN Ataques_Panico = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ataques_Panico
FROM Datos_Limpios
GROUP BY Rango_Edad
ORDER BY Rango_Edad;

-- 5. PREVALENCIA POR ESTADO CIVIL
SELECT
    Casado,
    COUNT(*) AS Total_Estudiantes,
    ROUND(AVG(CASE WHEN Ansiedad = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ansiedad,
    ROUND(AVG(CASE WHEN Depresion = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Depresion,
    ROUND(AVG(CASE WHEN Ataques_Panico = 'Yes' THEN 1.0 ELSE 0.0 END) * 100, 2) AS Porcentaje_Ataques_Panico
FROM Datos_Limpios
GROUP BY Casado;