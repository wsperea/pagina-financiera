USE finanzas;
SELECT 
u.Id_usuario,
u.nombre AS nombre_usuario,
u.correo,
u.moneda,
u.ingresos_mensuales,

t.Id_transaccion,
t.tipo AS tipo_transaccion,
t.monto AS monto_transaccion,
t.descripcion,
t.fecha AS fecha_transaccion,

c.Id_categoria,
c.nombre AS categoria,
c.tipo AS tipo_categoria,

p.limitte_mensual,

m.Id_metas,
m.nombre_meta,
m.monto_actual,
m.fecha_inicio,
m.fecha_limite,
m.estado,

a.Id_aporte,
a.monto AS aporte_meta,
a.fecha AS fecha_aporte

FROM usuarios u
LEFT JOIN transaciones t ON u.Id_usuario = t.Id_usuario
LEFT JOIN categorias c ON t.Id_categoria = c.Id_categoria
LEFT JOIN presupuesto p 
    ON p.Id_usuario = u.Id_usuario 
    AND p.Id_categoria = c.Id_categoria
LEFT JOIN metas m ON u.Id_usuario = m.Id_usuario
LEFT JOIN apores_meta a ON m.Id_metas = a.Id_meta;