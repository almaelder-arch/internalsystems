BEGIN;
-- Table: employees.department_manager

CREATE TABLE IF NOT EXISTS employees.department_manager
(
    employee_id bigint NOT NULL,
    department_id character(4) COLLATE pg_catalog."default" NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    CONSTRAINT idx_16985_primary PRIMARY KEY (employee_id, department_id),
    CONSTRAINT dept_manager_ibfk_1 FOREIGN KEY (employee_id)
        REFERENCES employees.employee (id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE CASCADE,
    CONSTRAINT dept_manager_ibfk_2 FOREIGN KEY (department_id)
        REFERENCES employees.department (id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE CASCADE
)


ALTER TABLE IF EXISTS employees.department_manager OWNER to postgres;

CREATE INDEX IF NOT EXISTS idx_16985_dept_no
    ON employees.department_manager USING btree
    (department_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

END;