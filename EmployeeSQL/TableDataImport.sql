COPY departments
FROM 'C:\Users\hari.somayajula\OneDrive - Rheem Manufacturing Company\Hari\Personal\DSBootCamp\Working\Assignment 9 - SQL\Instructions\data\departments.csv'
DELIMITER ','
CSV HEADER;

COPY titles
FROM 'C:\Users\hari.somayajula\OneDrive - Rheem Manufacturing Company\Hari\Personal\DSBootCamp\Working\Assignment 9 - SQL\Instructions\data\titles.csv'
DELIMITER ','
CSV HEADER;

COPY employees
FROM 'C:\Users\hari.somayajula\OneDrive - Rheem Manufacturing Company\Hari\Personal\DSBootCamp\Working\Assignment 9 - SQL\Instructions\data\employees.csv'
DELIMITER ','
CSV HEADER;

COPY dept_emp
FROM 'C:\Users\hari.somayajula\OneDrive - Rheem Manufacturing Company\Hari\Personal\DSBootCamp\Working\Assignment 9 - SQL\Instructions\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY dept_manager
FROM 'C:\Users\hari.somayajula\OneDrive - Rheem Manufacturing Company\Hari\Personal\DSBootCamp\Working\Assignment 9 - SQL\Instructions\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;


COPY salaries
FROM 'C:\Users\hari.somayajula\OneDrive - Rheem Manufacturing Company\Hari\Personal\DSBootCamp\Working\Assignment 9 - SQL\Instructions\data\salaries.csv'
DELIMITER ','
CSV HEADER;



