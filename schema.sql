-- ** HUZAIFA JAHAN ** schema.sql

create table student(
	ssn char(9) not null,
 	primary key (ssn)
);
	
Create table professor(
	ssn char(9) not null,
 	primary key (ssn)
);

create table team(
	team_Id integer not null,
 	primary key (team_Id)
);

create table gta(
	ssn char(9),
	salary integer,
	primary key (ssn),
	foreign key (ssn) references student(ssn)
);

create table public.class(
	department char(4) not null,
	course_Number char(4) not null,
	primary key (department, course_Number)
);

create table public.section(
	department char(4),
	course_Number char(4),
	section_Id char(1) not null,
	team_Id integer,
	rating integer,
	foreign key (department, course_Number) references public.class(department, course_Number),
	foreign key (team_Id) references team(team_Id),
	primary key (department, course_Number, section_Id)
);

create table req_of(
	department char(4),
	course_Number char(4),
	preReq_Department char(4),
	preReq_Number char(4),
	primary key (department, course_Number, preReq_Department, preReq_Number),
	foreign key (department, course_Number) references public.class(department, course_Number),
	foreign key (preReq_Department, preReq_Number) references public.class(department, course_Number)
);

create table canTeach(
	ssn char(9),
	department char(4),
	course_Number char(4),
	primary key (ssn,department, course_number),
	foreign key (ssn) references professor(ssn),
	foreign key (department, course_Number) references public.class(department, course_Number)
);

create table take(
	ssn char(9),
	department char(4),
	course_Number char(4),
	section_Id char(1),
	grade integer,
	foreign key (ssn) references student(ssn),
	foreign key (department, course_Number,section_Id) references public.section(department, course_Number,section_ID),
	primary key (ssn, department, course_Number, section_Id)
);

create table wait_For(
	ssn char(9),
	department char(4),
	course_Number char(4),
	section_Id char(1) not null,
	waitlist_rank integer,
	foreign key (ssn) references student(ssn),
	foreign key (department, course_Number,section_Id) references public.section(department, course_Number,section_ID),
	primary key (ssn, department, course_Number, section_Id)
);

create table on_Team1(
	ssn char(9),
	team_Id integer,
	primary key (ssn, team_Id),
	foreign key (ssn) references professor(ssn), 	
	foreign key (team_Id) references team(team_Id)
);

create table on_Team2(
	ssn char(9),
	team_Id integer,
	primary key (ssn, team_Id),
	foreign key (ssn) references gta(ssn), 	
	foreign key (team_Id) references team(team_Id)
);
