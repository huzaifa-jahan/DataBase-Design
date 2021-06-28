--HUZAIFA JAHAN data.sql

insert into student (ssn) values
	('883145768'), 
	('034214955'),
	('309830132'),
	('909862933'),
	('209918302');

insert into professor (ssn) values
	('020174297'), 
	('430906871'),
	('880898340'),
	('015053673'),
	('288344850');

insert into team (team_Id) values
	(1), 
	(2),
	(3),
	(4),
	(5),
	(6);

insert into gta (ssn, salary) values
	('883145768', 10000),                  
	('909862933', 5000);

insert into class (department, course_Number) values
	('EECS', '3421'),
	('EECS', '3101'),
	('PHIL', '3601'),
	('ANTH', '3501'),
	('MATH', '3221'),
	('HUMA', '1000');

insert into public.section (department, course_Number, section_Id, team_Id, rating) values
	('EECS', '3421','b', 1, 100),
	('EECS', '3101','a', 2, 20),
	('PHIL', '3601','a', 3, 70),
	('ANTH', '3501','c', 4, 40),
	('MATH', '3221','m', 5, 60),
	('HUMA', '1000','n', 6, 10);

insert into req_of (department, course_Number,preReq_Department,preReq_Number) values
	('EECS', '3421','MATH', '3221'),
	('EECS', '3101','HUMA', '1000');

insert into canTeach (ssn, department, course_Number) values
	('020174297','EECS', '3421'), 
	('430906871','ANTH', '3501'),
	('880898340','HUMA', '1000'),
	('015053673','MATH', '3221'),
	('288344850','PHIL', '3601');

insert into take (ssn, department, course_Number, section_Id, grade) values
	('883145768','EECS', '3421','b', 82), 
	('034214955','EECS', '3421','b', 97),
	('309830132','PHIL', '3601','a', 20),
	('909862933','PHIL', '3601','a', 28),
	('209918302','HUMA', '1000','n', 11);

insert into wait_For (ssn, department, course_Number, section_Id, waitlist_rank) values
	('883145768','PHIL', '3601','a', 1), 
	('034214955','PHIL', '3601','a', 4),
	('309830132','EECS', '3421','b', 3),
	('909862933','HUMA', '1000','n', 2),
	('209918302','EECS', '3421','b', 5);

insert into on_Team1 (ssn, team_Id) values
	('020174297', 1), 
	('430906871', 5);
	
insert into on_Team2 (ssn, team_Id) values
	('883145768', 1),                  
	('909862933', 5);
