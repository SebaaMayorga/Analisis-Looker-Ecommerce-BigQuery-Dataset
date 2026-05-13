📊 Dashboard de Performance E-commerce: Análisis TheLook (BigQuery Dataset)

##🎯 Objetivo del Proyecto
Transformar datos transaccionales complejos del dataset global TheLook en una herramienta de Business Intelligence para la toma de decisiones. El enfoque principal fue construir una arquitectura de datos sólida (Capa Oro en SQL) para responder a preguntas críticas sobre rentabilidad, logística y comportamiento del cliente en un entorno de marketplace.

## 📂 Recursos del Proyecto
* **Dataset Utilizado:** TheLook Ecommerce (Public Data en Google BigQuery).
* **Herramientas:** PostgreSQL , Power BI Desktop.
* **Técnicas:** SQL (CTEs, Joins, Agregaciones), Modelado en Estrella, DAX.

## ❓Preguntas de Negocio Resueltas (KPIs)
Siguiendo un enfoque de análisis profesional, el dashboard responde a las siguientes necesidades:

1. **Salud Financiera:** ¿Cuál es la facturación bruta, el margen de utilidad total y el porcentaje de rentabilidad real?
* *Solución:* Implementación de tarjetas dinámicas con métricas de Ventas Totales ($2.72M) y Margen (51.92%).

2. **Eficiencia de Transacción:** ¿Cuál es el valor promedio de cada orden (AOV)?
* *Solución:* Cálculo de Ticket Promedio ($86.62) para medir el valor del cliente.

3. **Rendimiento de Inventario:** ¿Qué categorías dominan las ventas y cuáles son más rentables?
* *Solución:* Gráfico de barras de Ventas por Categoría para identificar productos estrella.

4. **Análisis Geográfico:** ¿En qué países se concentra la mayor operación y rentabilidad?
* *Solución:* Treemap de Distribución Geográfica para visualizar el alcance global.

5. **Evolución Temporal:** ¿Cómo han crecido las ventas históricamente y cuál es la tendencia?
* *Solución:* Gráfico de líneas de Tendencia Histórica para detectar estacionalidad y crecimiento mensual.

## 🖼️ Dashboard Final
Aca podes ver el resultado de la visualización:

https://github.com/SebaaMayorga/Analisis-Looker-Ecommerce-BigQuery-Dataset/blob/main/Img/Dashboard.PNG

## 🛠️ Mi Proceso de Trabajo (SQL & ETL)
A diferencia de una carga de datos básica, optimicé el flujo desde la fuente para garantizar un reporte escalable:

**Estrategia de Capa Oro:** Desarrollé una vista técnica en PostgreSQL (ds_thelook_gold) que unifica órdenes, productos y usuarios, filtrando solo transacciones completadas para asegurar la exactitud financiera.
**Feature Engineering:** Creé columnas calculadas directamente en SQL para Margen de Utilidad y Días de Entrega, reduciendo la carga de procesamiento en Power BI.
**Validación de Datos (EDA):** Utilicé scripts de análisis exploratorio para auditar los resultados de SQL contra las visualizaciones finales, garantizando "una sola fuente de verdad".

## 💡Insights Clave
**Rentabilidad Saludable:** El negocio mantiene un margen superior al 50%, indicando una excelente relación entre costo y precio de venta en las categorías líderes.
**Oportunidad en el AOV:** Con un ticket promedio de $86.62, existe margen para estrategias de cross-selling que aumenten la cantidad de productos por orden.
**Concentración de Mercado:** La distribución geográfica muestra mercados clave en Europa y Asia (ej. Francia, China, Reino Unido), lo que sugiere priorizar esfuerzos logísticos en estas regiones.

Optimización Estratégica: El análisis por categorías permite identificar qué productos generan volumen (facturación) versus cuáles generan valor (margen), clave para la planificación de marketing.

---

Cómo navegar este repositorio:
📂 /scripts_sql: Encuentra la lógica de creación de la vista y las consultas de auditoría.

📂 /dashboard: Descarga el archivo .pbix para interactuar con el modelo de datos.

---

**Desarrollado por Sebastian Mayorga - Junior Data Analyst**

📂 /img: Capturas de pantalla del proyecto.
