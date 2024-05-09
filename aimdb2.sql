INSERT INTO role_type(
	role
)
VALUES(
	'Manager'
);
INSERT INTO role_type(
	role
)
VALUES(
	'Mid-Level'
);
INSERT INTO role_type(
	role
)
VALUES(
	'Junior'
);

INSERT INTO employee(
	first_name,
	last_name,
	phone,
	email,
	role,
	current_status,
	rate,
	days_available
)
VALUES(
	'Joe',
	'Shmo',
	'111-111-1111',
	'joshmo@mail.com',
	1,
	'ACTIVE',
	30.00,
	'{"MONDAY", "TUESDAY", "WEDNESDAY"}'
);

INSERT INTO employee(
	first_name,
	last_name,
	phone,
	email,
	role,
	current_status,
	rate,
	days_available
)
VALUES(
	'Dill',
	'Pickle',
	'222-222-2222',
	'pickles@mail.com',
	2,
	'ACTIVE',
	20.00,
	'{"MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY"}'
);

INSERT INTO employee(
	first_name,
	last_name,
	phone,
	email,
	role,
	current_status,
	rate,
	days_available
)
VALUES(
	'Jane',
	'Doe',
	'555-666-7777',
	'jane.doe@gmail.com',
	3,
	'ACTIVE',
	10.00,
	'{"SUNDAY","MONDAY", "TUESDAY", "WEDNESDAY","THURSDAY","FRIDAY", "SATURDAY"}'
);

INSERT INTO shift(
	shift_date,
	employee_id,
	hours,
	current_status
)
VALUES(
	'2024-02-28',
	1,
	7,
	'COMPLETED'
);
INSERT INTO shift(
	shift_date,
	employee_id,
	hours,
	current_status
)
VALUES(
	'2024-02-28',
	2,
	9,
	'SCHEDULED'
);
INSERT INTO shift(
	shift_date,
	employee_id,
	hours,
	current_status
)
VALUES(
	'2024-02-28',
	3,
	12,
	'SCHEDULED'
);
INSERT INTO shift(
	shift_date,
	employee_id,
	hours,
	current_status
)
VALUES(
	'2024-02-29',
	1,
	12,
	'SCHEDULED'
);
INSERT INTO shift(
	shift_date,
	employee_id,
	hours,
	current_status
)
VALUES(
	'2024-02-29',
	2,
	12,
	'SCHEDULED'
);
INSERT INTO shift(
	shift_date,
	employee_id,
	hours,
	current_status
)
VALUES(
	'2024-02-29',
	3,
	12,
	'CANCELLED'
);