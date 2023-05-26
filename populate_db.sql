INSERT INTO worker (id, name, birthday, level, salary) VALUES
    (1, 'Oleksandr', '1986-08-23', 'Senior', 5000),
    (2, 'Oleg', '1985-12-03', 'Middle', 3500),
    (3, 'Max', '1986-06-12', 'Middle', 2900),
    (4, 'Ann', '1986-05-18', 'Junior', 900),
    (5, 'Sem', '1990-08-08', 'Senior', 4800),
    (6, 'Arina', '1988-11-01', 'Middle', 2600),
    (7, 'Mark', '1995-10-15', 'Trainee', 550),
    (8, 'Olha', '1993-02-17', 'Trainee', 500),
    (9, 'John', '1978-07-07', 'Junior', 800),
    (10, 'Andrii', '1999-10-10', 'Junior', 2600),
    (11, 'Alien', '1901-01-01', 'Senior', 5000);
	
ALTER TABLE worker
ALTER salary  RENAME TO THOMAS
	
INSERT INTO client (id, name) VALUES
    (1, 'Privat bank'),
    (2, 'Monobank'),
    (3, 'Lifecell'),
    (4, 'Uber'),
    (5, 'TellService'),
    (6, 'GOIT');
	
INSERT INTO project (id, client_id, start_date, finish_date) VALUES
    (1, 2, '2023-03-01', '2023-04-01'),
    (2, 1, '2022-10-01', '2023-02-01'),
    (3, 1, '2022-11-01', '2023-04-01'),
    (4, 3, '2022-05-01', '2023-06-01'),
    (5, 4, '2023-03-01', '2023-09-01'),
    (6, 2, '2022-08-01', '2023-03-01'),
    (7, 5, '2023-04-01', '2023-11-01'),
    (8, 6, '2021-07-02', '2022-02-01'),
    (9, 6, '2020-09-02', '2023-12-31'),
    (10, 1, '2019-08-08', '2024-02-01'),
	(11, 2, '2021-03-01', '2022-02-01');
	
INSERT INTO project_worker (project_id, worker_id) VALUES
    (1, 1), (1, 2), (1, 8),
    (2, 1), (2, 4), (2, 7),
    (3, 5), (3, 11), 
    (4, 6), (4, 3),
    (5, 6), (5, 4), (5, 3),
    (6, 1), (6, 5),
    (7, 6),
    (8, 2), (8, 3),
    (9, 11), (9, 6), (9, 10), (9, 7),
    (10, 1), (10, 5);
