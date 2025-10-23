BEGIN;
-- SEQUENCE: employees.id_employee_seq

CREATE SEQUENCE IF NOT EXISTS employees.id_employee_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE employees.id_employee_seq OWNED BY employees.employee.id;

END;