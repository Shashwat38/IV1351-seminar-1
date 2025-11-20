INSERT INTO person (personal_number, first_name, last_name, phone_number, address)
VALUES 
('199801019999', 'Anna', 'Lind', '0701111111', 'Stockholm'),
('198503051234', 'Erik', 'Svensson', '0702222222', 'Kista'),
('199210019111', 'Maria', 'Johansson', '0703333333', 'Solna'),
('198712019999', 'David', 'Karlsson', '0704444444', 'Sundbyberg'),
('197705057777', 'Sara', 'Ekström', '0705555555', 'Täby');

INSERT INTO job_title (job_title)
VALUES 
('Professor'),
('Lecturer'),
('Teaching Assistant'),
('Administrator');

INSERT INTO department (department_name, manager_id)
VALUES
('Computer Science', 1),
('Mathematics', 3);

INSERT INTO employee (employment_id, skill_set, salary, manager, person_id, department_id, job_title_id)
VALUES
('EMP001', 'Java, SQL, Databases', '45000', 'Anna Lind', 1, 1, 2),
('EMP002', 'Python, ML, AI', '47000', 'Anna Lind', 2, 1, 1),
('EMP003', 'Discrete Math, Logic', '43000', 'Maria Johansson', 3, 2, 2),
('EMP004', 'Networks, Cloud', '48000', 'Sarah Ekström', 4, 1, 1),
('EMP005', 'Algorithms, C++', '46000', 'Anna Lind', 5, 1, 2);

INSERT INTO skill (skill_name)
VALUES
('SQL'),
('Java'),
('Python'),
('Machine Learning'),
('AI'),
('Discrete Math'),
('C++'),
('Networks'),
('Cloud');

INSERT INTO employee_skill (employee_id, skill_id)
VALUES
(1,1), (1,2), (1,3),
(2,3), (2,4), (2,5),
(3,6),
(4,8), (4,9),
(5,7), (5,1);

INSERT INTO course_layout (course_code, course_name, min_students, max_students, hp)
VALUES
('IV1350', 'Database Technology', 30, 200, 7.5),
('IX1500', 'Discrete Mathematics', 40, 150, 7.5),
('DD1321', 'Programmering I', 50, 220, 7.5);

INSERT INTO course_instance (course_layout_id, instance_id, study_year, study_period, num_students)
VALUES
(1, 'IV1350-HT24', 2024, 'HT', 120),
(1, 'IV1350-VT25', 2025, 'VT', 150),
(2, 'IX1500-HT24', 2024, 'HT', 90),
(3, 'DD1321-VT25', 2025, 'VT', 200);

INSERT INTO teaching_activity (activity_name, factor)
VALUES
('Lecture', 3.6),
('Lab', 2.4),
('Tutorial', 2.4),
('Seminar', 1.8),


INSERT INTO planned_activity (course_instance_id, teaching_activity_id, planned_hours)
VALUES
(1,1,20), (1,2,30), (1,3,10),
(2,1,24), (2,2,36), (2,3,12),
(3,1,40), (3,3,0), (3,4,20),
(4,1,30), (4,2,40), (4,5,15);

INSERT INTO allocation (course_instance_id, teaching_activity_id, employee_id, allocated_hours)
VALUES
(1,1,1,12), (1,1,2,8),
(1,2,1,20), (1,2,5,10),
(1,3,3,10),
(2,1,1,14), (2,1,2,10),
(2,2,4,20), (2,2,5,16),
(2,3,3,12),
(3,1,3,25), (3,4,1,20),
(4,1,4,18), (4,2,5,22), (4,5,2,15);
