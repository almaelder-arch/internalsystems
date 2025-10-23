BEGIN;

CREATE TABLE IF NOT EXISTS employees.department
(
    id character(4) NOT NULL,
    dept_name character varying(40) NOT NULL,
    CONSTRAINT idx_16979_primary PRIMARY KEY (id)
)

CREATE UNIQUE INDEX IF NOT EXISTS idx_16979_dept_name
    ON employees.department USING btree
    (dept_name ASC NULLS LAST)

END;