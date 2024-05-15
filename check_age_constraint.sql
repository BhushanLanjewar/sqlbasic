select * from college

alter table college add age int

update college set age = 20 where section = 'A'

update college set age = 15 where section = 'B'

update college set age = 60 where section = 'C'

ALTER table college add constraint check_age check (age > 18 and age < 55)