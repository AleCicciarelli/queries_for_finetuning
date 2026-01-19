DO $$
DECLARE
  r record;
BEGIN
  --------------------------------------------------------------------
  -- 1) Drop triggers related to ProvSQL
  --    Heuristic:
  --      - trigger function in schema 'provsql'
  --      - OR trigger name contains 'provsql'
  --------------------------------------------------------------------
  RAISE NOTICE 'Dropping ProvSQL-related triggers...';

  FOR r IN
    SELECT
      n.nspname AS schema_name,
      c.relname AS table_name,
      t.tgname  AS trigger_name
    FROM pg_trigger t
    JOIN pg_class c       ON c.oid = t.tgrelid
    JOIN pg_namespace n   ON n.oid = c.relnamespace
    JOIN pg_proc p        ON p.oid = t.tgfoid
    JOIN pg_namespace pn  ON pn.oid = p.pronamespace
    WHERE NOT t.tgisinternal
      AND n.nspname = 'public'
      AND (
           pn.nspname = 'provsql'
           OR t.tgname ILIKE '%provsql%'
      )
  LOOP
    RAISE NOTICE '  DROP TRIGGER %.% on %.%', r.schema_name, r.trigger_name, r.schema_name, r.table_name;
    EXECUTE format('DROP TRIGGER IF EXISTS %I ON %I.%I;',
                   r.trigger_name, r.schema_name, r.table_name);
  END LOOP;

  --------------------------------------------------------------------
  -- 2) Drop 'provsql' column from all base tables in public schema
  --------------------------------------------------------------------
  RAISE NOTICE 'Dropping provsql columns...';

  FOR r IN
    SELECT table_schema AS schema_name, table_name
    FROM information_schema.tables
    WHERE table_schema = 'public'
      AND table_type = 'BASE TABLE'
  LOOP
    IF EXISTS (
      SELECT 1
      FROM information_schema.columns
      WHERE table_schema = r.schema_name
        AND table_name   = r.table_name
        AND column_name  = 'provsql'
    ) THEN
      RAISE NOTICE '  ALTER TABLE %.% DROP COLUMN provsql', r.schema_name, r.table_name;
      EXECUTE format('ALTER TABLE %I.%I DROP COLUMN IF EXISTS provsql;',
                     r.schema_name, r.table_name);
    END IF;
  END LOOP;

  --------------------------------------------------------------------
  -- 3) Drop provenance mapping tables: provmap and *_map
  --------------------------------------------------------------------
  RAISE NOTICE 'Dropping provmap and *_map tables...';

  -- drop provmap first (if present)
  IF EXISTS (
    SELECT 1
    FROM information_schema.tables
    WHERE table_schema='public' AND table_name='provmap'
  ) THEN
    RAISE NOTICE '  DROP TABLE public.provmap';
    EXECUTE 'DROP TABLE IF EXISTS public.provmap CASCADE;';
  END IF;

  -- drop all *_map tables
  FOR r IN
    SELECT table_schema AS schema_name, table_name
    FROM information_schema.tables
    WHERE table_schema='public'
      AND table_type='BASE TABLE'
      AND table_name LIKE '%\_map' ESCAPE '\'
  LOOP
    RAISE NOTICE '  DROP TABLE %.%', r.schema_name, r.table_name;
    EXECUTE format('DROP TABLE IF EXISTS %I.%I CASCADE;',
                   r.schema_name, r.table_name);
  END LOOP;

  RAISE NOTICE 'Done.';
END $$;
-- no provsql columns left?
SELECT table_name
FROM information_schema.columns
WHERE table_schema='public' AND column_name='provsql';

-- no provmap or *_map tables left?
SELECT table_name
FROM information_schema.tables
WHERE table_schema='public'
  AND table_type='BASE TABLE'
  AND (table_name='provmap' OR table_name LIKE '%\_map' ESCAPE '\');

-- no provsql triggers left?
SELECT n.nspname, c.relname, t.tgname
FROM pg_trigger t
JOIN pg_class c ON c.oid=t.tgrelid
JOIN pg_namespace n ON n.oid=c.relnamespace
WHERE NOT t.tgisinternal
  AND n.nspname='public'
  AND t.tgname ILIKE '%provsql%';



DROP EXTENSION IF EXISTS provsql CASCADE;

create extension provsql;