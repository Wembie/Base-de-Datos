CREATE TABLE persons (
    id int,
    name varchar(100),
    age int,
    email varchar(100),
    created date
);

CREATE TABLE persons1 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(100),
    created date
);

CREATE TABLE persons2 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(100),
    created datetime, 
    UNIQUE (id)
);

CREATE TABLE persons3 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(100),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(id)
);

CREATE TABLE persons4 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(100),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

CREATE TABLE persons5 (
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(100),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

CREATE TABLE persons6 (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(100),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

CREATE TABLE companies (
    company_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE languages (
    language_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(100) NOT NULL
);