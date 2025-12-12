DO $$
DECLARE
    tbl TEXT;
    map_name TEXT;
    rownum_col TEXT;
BEGIN
    FOR tbl IN
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = 'public'
          AND table_type = 'BASE TABLE'
    LOOP
        map_name := tbl || '_map';
        rownum_col := tbl || '_rownum';

        RAISE NOTICE 'Creating provenance mapping for table: %, map: %, column: %',
                     tbl, map_name, rownum_col;

        -- Fix ProvSQL bug: tmp_provsql must not exist before each mapping
        EXECUTE 'DROP TABLE IF EXISTS tmp_provsql';

        EXECUTE format(
            'SELECT provsql.create_provenance_mapping(%L, %L, %L);',
            map_name, tbl, rownum_col
        );
    END LOOP;
END$$;
