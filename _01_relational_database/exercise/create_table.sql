create database create_table;
use create_table;
CREATE TABLE class (
    id INT,
    `name` VARCHAR(50)
);
insert into class values(1,"hieu");
insert into class values(2,"linh");

CREATE TABLE student (
    id INT,
    `name` VARCHAR(50),
    age INT,
    nation VARCHAR(50)
);
insert into student values(2,"linh",15,"VietNam");
insert into student values(4,"quang",15,"Japan");
