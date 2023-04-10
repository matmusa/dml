create table students
(
    id serial primary key,
    first_name    varchar,
    last_name     varchar,
    gender  varchar,
    date_of_birth date,
    email  varchar unique,
    course varchar,
    payment numeric,
    duration int
);
insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
values ('Manas', 'Abdugani U', 'Male', '2000-1-12', 'manas@gmail.com', 'Java', 12000.500, 9),
       ('Temiclan', 'Luzukulov', 'Male', '2001-4-17', 'temirlan@gmail.com', 'Java', 10000.300, 6),
       ('Gulmica', 'Ismenova', 'Female', '1999-7-20', 'gulmira@gmail.com', 'JS', 9000.800, 9),
       ('Ainazik', 'Amangeldieva', 'Female', '2002-1-12', 'ainazik@gmail.com', 'JS', 10000, 3),
       ('Adilet', 'Istanbek', 'Male',
        '1998-9-4', 'adilet@gmail.com', 'JS', 6000, 3),
       ('Aizat', 'Duisheeva', 'Female',
        '2002-1-12', 'aizat@gmail.com', 'Java', 8000, 6),
       ('Baytik', 'Taalaybekov', 'Male', '2003-7-5', 'baytik@gmail.com', 'Java', 12000, 9),
       ('Saniar', 'abdynonunov', 'Male', '2004-1-3', 'sanjar@gmail.com', 'Java', 8000.500, 6),
       ('Eckänbek', 'Keshaliex', 'Male',  '1999-1-12', 'erkinbek@gmail.com', 'JS' ,6000, 3),
       ('Khafiz', 'Turushek U',
        'Male',
        '1999-7-19', 'hafiz@gmail.com', 'JS', 12000, 7);

insert into students(first_name, last_name, gender, date_of_birth, email, course, payment, duration)
values ('Matmusa', 'Abduvokhob u', 'Male', '2000-1-12', null, 'Java', 13000.500, 7);

select * from students;
select   first_name,last_name from students;
select  first_name as name from students;
select first_name,last_name ,payment*duration as total_payment from students;
select concat(first_name,' ',last_name) as full_name from students;
select  first_name,last_name from students order by first_name desc ;
select distinct course from students;
select distinct gender from students;
select *from students where course='Java';
select *from students where course='JS' and payment>10000;
select *from students where course='Java' or gender='Male';
select *from students limit 4;
select *from students offset 4;-- vyvodit informaton posle etoi stroki
select *from students fetch first 4 rows only ; -- vyvodit informaton tolko na etoi strake
select *from students where email in ('sanjar@gmail.com','gulmira@gmail.com');
select *from students where gender not in ('Male');
select *from students where date_of_birth between  '2001-1-1'and '2004-1-1';
select *from students where  last_name like '%va';
select *from students where  first_name like 'A%';
select *from students where  first_name like '______';
select *from students where  last_name ilike('A%');
select course from students group by course;
select count (course)from students group by course;
select gender, count (gender)from students group by gender;
select duration,count(duration) from students group by duration;
select gender, count (gender)from students group by gender having count(gender)>5;
select max(payment)from students;
select min(payment)from students;
select avg(payment)from students;
select round(payment)from students;
select sum(payment)from students;
select coalesce(email,'emaill is provided!')from students;--if information is null;
select now()-interval '1 day';
select now()::time;
select extract(year from now());--extract izvlecat
select extract(day from now());
select extract(centuries from now());
select extract(month from now());

delete from students where first_name='Aizat';
select * from students;
update students set course ='Python' where course ='Java';
update students set last_name ='Tashtanov' where last_name='Abduvokhob u';


