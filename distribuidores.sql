-- Ejecutar una sola vez en Supabase SQL Editor.
create table if not exists public.distribuidores (
  id uuid primary key default gen_random_uuid(),
  codigo text not null unique,
  nombre text not null,
  logo_oscuro_url text,
  logo_claro_url text,
  icono_usuario_url text,
  activo boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
alter table public.distribuidores enable row level security;
drop policy if exists "distribuidores lectura publica" on public.distribuidores;
create policy "distribuidores lectura publica" on public.distribuidores for select using (activo = true);
insert into public.distribuidores (codigo,nombre,activo)
values ('qiora','QiORA',true)
on conflict (codigo) do update set nombre=excluded.nombre, activo=true, updated_at=now();
