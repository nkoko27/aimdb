CREATE TABLE role_type(
	id SERIAL PRIMARY KEY,
	role VARCHAR(40) UNIQUE NOT NULL,
	description VARCHAR(500)
);

CREATE TYPE employee_status AS ENUM ('ACTIVE', 'ON LEAVE', 'VACATION', 'FIRED');

CREATE TYPE day_of_week AS ENUM ('SUNDAY', 'MONDAY','TUESDAY',
								 'WEDNESDAY','THURSDAY','FRIDAY','SATURDAY');

CREATE TYPE shift_status AS ENUM ('SCHEDULED', 'COMPLETED', 'CANCELLED');

CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
 	last_name VARCHAR(30) NOT NULL,
 	phone VARCHAR(25) UNIQUE NOT NULL,
	email VARCHAR(30) UNIQUE,
	role INTEGER REFERENCES role_type(id) NOT NULL,
	current_status employee_status NOT NULL,
	rate MONEY NOT NULL,
	days_available day_of_week[] NOT NULL
);

CREATE TABLE shift(
	id SERIAL PRIMARY KEY,
	shift_date DATE NOT NULL,
	employee_id INTEGER REFERENCES employee(id) NOT NULL,
	hours SMALLINT NOT NULL CHECK (hours > 0),
	current_status shift_status NOT NULL,
	description VARCHAR(500)
);

