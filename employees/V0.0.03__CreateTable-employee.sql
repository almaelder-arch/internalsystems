BEGIN;

CREATE SEQUENCE IF NOT EXISTS employees.id_employee_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

CREATE TABLE IF NOT EXISTS employees.employee
(
    id bigint NOT NULL DEFAULT nextval('employees.id_employee_seq'::regclass),
    birth_date date NOT NULL,
    first_name character varying(14) NOT NULL,
    last_name character varying(16) NOT NULL,
    gender employees.employee_gender NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT idx_16988_primary PRIMARY KEY (id)
)

ALTER SEQUENCE employees.id_employee_seq OWNED BY employees.employee.id;

END;