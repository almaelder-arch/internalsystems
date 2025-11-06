BEGIN;

CREATE TABLE IF NOT EXISTS employees.title
(
    employee_id bigint NOT NULL,
    title character varying(50) COLLATE pg_catalog."default" NOT NULL,
    from_date date NOT NULL,
    to_date date,
    CONSTRAINT idx_16994_primary PRIMARY KEY (employee_id, title, from_date),
    CONSTRAINT titles_ibfk_1 FOREIGN KEY (employee_id)
        REFERENCES employees.employee (id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE CASCADE
);


ALTER TABLE IF EXISTS employees.title
    OWNER to postgres;


END;