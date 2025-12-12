DO $$
DECLARE
    tbl TEXT;
    colname TEXT;
    sql TEXT;
BEGIN
    FOR tbl IN
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = 'public'
          AND table_type = 'BASE TABLE'
    LOOP
        colname := tbl || '_rownum';

        -- Add column <tablename>_rownum if it does not exist
        sql := format(
            'ALTER TABLE public.%I ADD COLUMN IF NOT EXISTS %I TEXT;',
            tbl, colname
        );
        EXECUTE sql;

        -- Update the new column with unique values
        sql := format(
            'UPDATE public.%I t ' ||
            'SET %I = x.tbl_prefix || ''_'' || x.rn ' ||
            'FROM (SELECT ctid, row_number() OVER () AS rn, %L AS tbl_prefix FROM public.%I) x ' ||
            'WHERE t.ctid = x.ctid;',
            tbl, colname, tbl, tbl
        );
        EXECUTE sql;

        RAISE NOTICE 'Processed table: %, added column: %', tbl, colname;
    END LOOP;
END$$;
