create database movie;
use movie;
create table rating(
mov_id INT,
rev_id INT,
rev_stars INT,
num_o_ratings INT              

);
 -- select * from rating
select * from actor;
-- SOLUTION TO SQL ASSIGNMENT --

-- Adding primary keys to tables
alter table actor
add constraint actor_pk primary key(act_id);

alter table director
add constraint director_pk primary key(dir_id);

alter table movie
add constraint movie_pk primary key(mov_id);

alter table reviewer
add constraint reviewer_pk primary key(rev_id);

alter table genre
add constraint gen_pk primary key(gen_id);

-- Inserting extra row into reviewer table to able able to serve as a foreign key to rating

insert into reviewer(rev_id) values(
9021
);
update reviewer
set rev_name = 'NULL'
where rev_id = 9021;
 -- Alter table rating
alter table rating
add constraint movie_fk foreign key(mov_id)
	references movie(mov_id) on delete cascade;
alter table rating
add constraint reviewer_fk foreign key(rev_id)
		references reviewer(rev_id)
        on delete cascade;

 -- movie cast, act_id, mov_id
 alter table movie_cast
 add constraint actor_fk foreign key(act_id)
	references actor(act_id),
 add constraint movie_cast_fk foreign key(mov_id)
	references movie(mov_id);

-- Adding on delete cascade to foreign keys in movie cast --
-- step 1
 alter table movie_cast
 drop foreign key actor_fk, drop foreign key movie_cast_fk;
 -- step 2
  alter table movie_cast
 add constraint actor_fk foreign key(act_id)
	references actor(act_id) on delete cascade,
 add constraint movie_cast_fk foreign key(mov_id)
	references movie(mov_id) on delete cascade;
 

-- movie_genre, mov_id, gen_id
alter table movie_genre
add constraint movie_gen_fk foreign key(mov_id)
	references movie(mov_id),
add constraint gen_movie_fk foreign key(gen_id)
		references genre(gen_id);
        
-- Adding on delete cascade to foreign keys in movie cast --
-- step 1
alter table movie_genre
drop foreign key movie_gen_fk, 
drop foreign key gen_movie_fk;

 -- step 2
 alter table movie_genre
add constraint movie_gen_fk foreign key(mov_id)
	references movie(mov_id) on delete cascade,
add constraint gen_movie_fk foreign key(gen_id)
		references genre(gen_id) on delete cascade;
        
-- movie_direction, dir_id, mov_id
alter table movie_direction
add constraint direction_fk foreign key(dir_id)
	references director(dir_id) on delete cascade,
add constraint movie_direction_fk foreign key(mov_id)
	references movie(mov_id) on delete cascade;
    

  select * from rating ;
  select * from reviewer;

 -- lost all the rev_name values due to a wrong update statement

/*
rev_id,rev_name
9001,"Righty Sock"
9002,"Jack Malvern"
9003,"Flagrant Baronessa"
9004,"Alec Shaw"
9005,NULL
9006,"Victor Woeltjen"
9007,"Simon Wright"
9008,"Neal Wruck"
9009,"Paul Monks"
9010,"Mike Salvati"
9011,NULL
9012,"Wesley S. Walker"
9013,"Sasha Goldshtein"
9014,"Josh Cates"
9015,"Krug Stillo"
9016,"Scott LeBrun"
9017,"Hannah Steele"
9018,"Vincent Cadena"
9019,"Brandt Sponseller"
9020,"Richard Adams"
*/

update reviewer
set rev_name = CASE
WHEN rev_id =9001 THEN 'Righty Stock'
WHEN rev_id = 9002 THEN 'Jack Malverin'
WHEN rev_id = 9003 THEN 'Flagrant Baronsessa'
WHEN rev_id = 4004 THEN 'Alec Shaw'
WHEN rev_id = 9005 THEN 'NULL'
WHEN rev_id = 9006 THEN 'Victor Woeltjen'
WHEN rev_id = 9007 THEN 'Simon Wright'
WHEN rev_id = 9008  THEN 'Neal Wruck'
WHEN rev_id = 9011  THEN 'NULL'
WHEN rev_id = 9012 THEN 'Wesley S. Walker'
WHEN rev_id = 9013 THEN 'Sasha Goldshtein'
WHEN rev_id = 9014  THEN 'Josh Cates'
WHEN rev_id = 9015  THEN 'Krug Stillo'
WHEN rev_id = 9016 THEN 'Scott LeBrun'
WHEN rev_id = 9017 THEN 'Hannah Steele'
WHEN rev_id = 9018 THEN 'Vincent Cadena'
WHEN rev_id = 9019 THEN 'Brandt sponseller'
WHEN rev_id = 9020 THEN 'Richard Adams'
WHEN rev_id = 9021 THEN 'NULL'
ELSE rev_name
END;

update reviewer
set rev_name = CASE
when rev_id = 9004 then 'Alec Shaw'
WHEN rev_id = 9009 THEN 'Paul Monks'
WHEN rev_id = 9010  THEN 'Mike Salvati'
else rev_name
END;
