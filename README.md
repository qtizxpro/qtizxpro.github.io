# QTIZX PRO

**Cotiza. Compara. Vende.**

Migración técnica del cotizador a una base QTIZX PRO.

## Antes de publicar
1. Completar `config.js` con las cuentas nuevas de Supabase y Firebase.
2. Replicar esquema/datos necesarios en Supabase.
3. Crear usuarios y reglas en Firebase usando el campo `usuario`.
4. Probar login, catálogo, cotización simple/comparativa, descuentos, calculadora, actividad, administración y PWA.
5. No subir secretos de servidor al repositorio.

## Jerarquía objetivo
`ADMIN1 > CADENA > NACIONAL > REGIONAL > GERENTE > EJECUTIVO`

## Dependencias de terceros
`vendors.js` contiene bibliotecas de terceros y conserva sus avisos/licencias originales.
