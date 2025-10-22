-- Table: employees.department

CREATE TABLE IF NOT EXISTS employees.department
(
    id character(4) NOT NULL,
    dept_name character varying(40) NOT NULL,
    CONSTRAINT idx_16979_primary PRIMARY KEY (id)
)


ALTER TABLE IF EXISTS employees.department
    OWNER to postgres;


CREATE UNIQUE INDEX IF NOT EXISTS idx_16979_dept_name
    ON employees.department USING btree
    (dept_name ASC NULLS LAST)
 