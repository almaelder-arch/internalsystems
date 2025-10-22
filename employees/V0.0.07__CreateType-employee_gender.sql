-- Type: employee_gender

CREATE TYPE employees.employee_gender AS ENUM
    ('M', 'F');

ALTER TYPE employees.employee_gender OWNER TO postgres;
