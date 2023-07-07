use quanlisinhvien;
select * from student
where studentname like 'h%';

select* from class
where Month(StartDate) = 12;

select* from subject
where credit between 5 and 10;

Update Student
set ClassID = 2
where StudentName = 'Hung';
select * from student;

select StudentName, SubName, Mark
from Mark
join Student on Mark.StudentID = student.StudentID
join Subject on Mark.SubID = Subject.SubID 
order by Mark desc, StudentName