DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type pt JOIN pg_namespace pns ON pt.typnamespace = pns.oid WHERE pt.typname ='employee_gender' AND pns.nspname = 'employees'; ) THEN
		CREATE TYPE employees.employee_gender AS ENUM
		('M', 'F');
	END IF;
END$$