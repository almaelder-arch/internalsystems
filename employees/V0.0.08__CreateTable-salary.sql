BEGIN;

CREATE TABLE IF NOT EXISTS employees.salary
(
    employee_id bigint NOT NULL,
    amount bigint NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    CONSTRAINT idx_16991_primary PRIMARY KEY (employee_id, from_date),
    CONSTRAINT salaries_ibfk_1 FOREIGN KEY (employee_id)
        REFERENCES employees.employee (id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE CASCADE
);


ALTER TABLE IF EXISTS employees.salary
    OWNER to postgres;


END;