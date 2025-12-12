DROP TABLE IF EXISTS provmap;

CREATE TABLE provmap (
    value text,
    provenance uuid
);

DO $$
DECLARE
    map_table TEXT;
BEGIN
    FOR map_table IN
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = 'public'
          AND table_name LIKE '%\_map'
          AND table_type = 'BASE TABLE'
    LOOP
        RAISE NOTICE 'Adding entries from %', map_table;

        EXECUTE format(
            'INSERT INTO provmap SELECT * FROM %I;',
            map_table
        );
    END LOOP;
END$$;
