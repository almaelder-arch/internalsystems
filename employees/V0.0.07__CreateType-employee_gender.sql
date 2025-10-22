BEGIN;
-- Type: employee_gender

CREATE TYPE employees.employee_gender AS ENUM
    ('M', 'F');

END;