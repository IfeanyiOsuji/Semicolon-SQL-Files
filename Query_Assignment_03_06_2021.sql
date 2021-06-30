-- SOLUTion TO QUERY EXERCISES

select* from movie; -- mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country
-- 1
select mov_title, mov_year from movie;

-- 2
select mov_title, mov_year
from movie
where mov_title = 'American Beauty';

-- 3
select mov_title, mov_dt_rel
from movie
where mov_year = '1999';
-- 4
select mov_title, mov_year
from movie
where mov_year < 1998;

-- 5
select mov_title
from movie 
where mov_year = 1999;

-- 6
select * from reviewer;
select * from rating;
 -- rating mov_id, rev_id; movie mov_id, mov_name; reviewer rev_id, rev_name
 select rev.rev_name, mv.mov_title              
	from reviewer rev join rating rt
    on rev.rev_id = rt.rev_id
    join movie mv on mv.mov_id = rt.mov_id;
-- 7
select rev.rev_name as 'Names of Reviewers who rated at least 7 stars'
from reviewer rev 
join rating rt on rev.rev_id = rt.rev_id
where rev_stars >= 7;

-- 8
-- Write a query in SQL to find the titles of all movies that have no ratings.

select mov_title
from movie
where mov_id in
(select mov_id from rating
where num_o_ratings is Null );

-- 9
-- Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value
select rv.rev_name, rt.rev_id
from reviewer rv
join rating rt
on rv.rev_id = rt.rev_id
where rv.rev_name = 'Null';

-- 10
-- Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
-- select * from director;
select mv.mov_title as 'Movie Name',  concat(dir_fname,' ', dir_lname) as 'Director'
from movie mv
join movie_direction mvd
on mv.mov_id = mvd.mov_id
join director dr
on dr.dir_id = mvd.dir_id
where mv.mov_title = 'Eyes Wide Shut';









































