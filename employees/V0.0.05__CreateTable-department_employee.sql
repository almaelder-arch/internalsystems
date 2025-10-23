BEGIN;
-- Table: employees.department_employee

CREATE TABLE IF NOT EXISTS employees.department_employee
(
    employee_id bigint NOT NULL,
    department_id character(4)  NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    CONSTRAINT idx_16982_primary PRIMARY KEY (employee_id, department_id),
    CONSTRAINT dept_emp_ibfk_1 FOREIGN KEY (employee_id)
        REFERENCES employees.employee (id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE CASCADE,
    CONSTRAINT dept_emp_ibfk_2 FOREIGN KEY (department_id)
        REFERENCES employees.department (id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_16982_dept_no
    ON employees.department_employee USING btree
    (department_id ASC NULLS LAST);
    

END;