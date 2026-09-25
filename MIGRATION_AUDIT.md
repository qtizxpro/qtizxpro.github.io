# Auditoría de migración — QTIZX PRO

## Cambios realizados
- Identidad textual migrada a QTIZX PRO.
- `ATTUID/attuid` normalizado a `USUARIO/usuario` en la base migrada.
- Configuración de Firebase y Supabase extraída a `config.js`; las credenciales anteriores no se incluyen.
- Manifiesto PWA reconstruido para QTIZX PRO.
- Service worker reconstruido sin módulos de comisiones ni cachés heredados.
- Navegación/pantalla de Top comisiones y carga de `incentivos.js` retiradas.
- Lógica de recomendaciones que dependía de comisión fue desacoplada de incentivos/comisiones.
- Recursos gráficos sustituidos por los iconos y header QTIZX PRO proporcionados.
- `vendors.js` se conserva como dependencia de terceros con sus licencias.

## Importante
Esta migración NO pretende ocultar procedencia. Cambiar nombres no convierte código heredado en obra original. Los módulos heredados que se quieran presentar como desarrollo propio deben reimplementarse y documentarse de forma independiente antes de hacer afirmaciones de autoría.

## Pendientes antes de producción
- Crear y conectar Supabase/Firebase nuevos.
- Replicar tablas y datos.
- Adaptar backend/Cloud Functions si se usan acciones administrativas.
- Ejecutar pruebas funcionales con datos reales.
- Revisar reglas por jerarquía multi-cadena.
