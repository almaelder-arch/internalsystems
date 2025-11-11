BEGIN;

	INSERT INTO employees.department(id,dept_name)
	VALUES('d010','Legal')
	ON CONFLICT (id) DO NOTHING;

END;