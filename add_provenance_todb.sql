DO $$
DECLARE
    tbl TEXT;
    
BEGIN
    -- Loop su tutte le tabelle base dello schema "public"
    FOR tbl IN
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = 'public'
          AND table_type = 'BASE TABLE'
    LOOP
        RAISE NOTICE 'Processing table: %', tbl;
        -- applicare la provenance
        EXECUTE format(
            'SELECT provsql.add_provenance(%L);',
            tbl
        );

        RAISE NOTICE 'Provenance reapplied on %', tbl;
    END LOOP;
END$$;
