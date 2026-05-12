-- 1. LOGÍSTICA
    EXTRACT(DAY FROM (oi.delivered_at - oi.created_at)) AS dias_entrega,
    
    -- 2. RENTABILIDAD
    ROUND(oi.sale_price::numeric, 2) AS sale_price,
    ROUND(p.cost::numeric, 2) AS cost,
    ROUND((oi.sale_price - p.cost)::numeric, 2) AS margen_utilidad,
    
    ROUND(
        (((oi.sale_price - p.cost) / NULLIF(oi.sale_price, 0)) * 100)::numeric, 
        2
    ) AS porcentaje_margen,
    
    -- 3. DIMENSIONES
    p.name AS producto_nombre,
    p.category AS categoria,
    p.brand AS marca,
    u.country AS pais_cliente,
    u.gender AS genero,
    
    oi.created_at AS fecha_venta,
    TO_CHAR(oi.created_at, 'YYYY-MM') AS periodo_mes

FROM order_items oi
JOIN products p ON oi.product_id = p.id
JOIN users u ON oi.user_id = u.id
WHERE oi.status = 'Complete';


--Cual es nuestra categoria mas rentable:
SELECT 
    categoria, 
    ROUND(SUM(margen_utilidad), 2) AS ganancia_total
FROM ds_thelook_gold
GROUP BY categoria
ORDER BY ganancia_total DESC
LIMIT 5;

--En que paises vendemos con mejor margen:
SELECT 
    pais_cliente, 
    ROUND(AVG(porcentaje_margen), 2) AS promedio_margen_porcentual
FROM ds_thelook_gold
GROUP BY pais_cliente
ORDER BY promedio_margen_porcentual DESC
LIMIT 5;

--Como han evolucionado las ventas mes a mes:
SELECT 
    periodo_mes, 
    ROUND(SUM(sale_price), 2) AS ventas_totales
FROM ds_thelook_gold
GROUP BY periodo_mes
ORDER BY periodo_mes ASC;
