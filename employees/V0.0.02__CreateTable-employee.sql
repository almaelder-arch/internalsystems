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
