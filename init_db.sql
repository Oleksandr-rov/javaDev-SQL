
CREATE TABLE IF NOT EXISTS worker (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) CONSTRAINT ck_worker_name CHECK(length(name) >= 2),
    birthday DATE CONSTRAINT ck_worker_data_name CHECK(year(birthday) > 1900),
    level VARCHAR CONSTRAINT ck_worker_level CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    salary NUMERIC(6.0) CONSTRAINT ck_worker_salary CHECK(salary >= 100.0 AND salary <= 100000.0)
);

CREATE TABLE IF NOT EXISTS client (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(1000) CONSTRAINT ck_client_name CHECK(length(name) >= 2)
);

CREATE TABLE IF NOT EXISTS project (
    id IDENTITY PRIMARY KEY,
    client_id BIGINT,
    start_date DATE,
    finish_date DATE
);

CREATE TABLE project_worker (
    project_id BIGINT,
    worker_id BIGINT,
    PRIMARY KEY(project_id, worker_id),
    FOREIGN KEY (project_id) REFERENCES project(id),
    FOREIGN KEY (worker_id) REFERENCES worker(id)
);