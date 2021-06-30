 -- INSERTING VALUES INTO TABLE --
 use demo;
 /*
 insert into Human values(
 01, 'John Doe', 18, 'M', 'O+', 'AA');
 insert into Human values(02, 'Will Bruce', 23, 'M', 'B+', 'AS');
 insert into Human values(03, 'Shawn Michaels', 25, 'M', 'O+', 'AA');
 insert into Human values(04, 'John Doe', 18, 'F', 'B-', 'AS');
 insert Human values(05, 'Ken Green', 20, 'M', 'O+', 'SS');
 insert into Human values(06, 'Sam Lee', 19, 'M', 'A-', 'AS');
 insert into Human values(07, 'Agbabiaka Ajala', 22, 'M', 'O', 'AA');
 insert into Human values(08, 'Ebuka Idoya', 24, 'M', 'O+', 'AA');
 insert into Human values(09, 'Adamu Haruna', 29, 'M', 'O+', 'AS');
 insert into Human values (10, 'Bisola Waayans', 18, 'F', 'O+', 'AA');
 */
 
 -- select * from Human; --
  
  -- Insert Method 2
  -- insert into the games table
  insert into Games values
  (010, 'Sophia the First', 50.34, 10, 'Best Buy Store'),
  (011, 'God of War 3', 70.25, 5, 'Jumia Stones'),
  (012, 'Rocketeer', 50.34, 10, 'Konga'),
  (013, 'God of War 2', 60.99, 5, 'Jumia Stores'),
  (014, 'Call of Duty', 75.34, 10, 'Best Buy Store'),
  (015, 'Walking Dead', 40.24, 8, 'Konga'),
  (016, 'Van Heilsing', 60.99, 10, 'Konga'),
  (017, 'GTA', 50.34, 10, 'Atlantean Store'),
  (018, 'Hitman 3', 72.34, 10, 'Andromeda Store'),
  (019, 'Clash of the Titans', 50.34, 10, 'Atlantean Store');
 select * from Games;
 
 insert into GamePurchase(humanId, gameId) values
 (01, 10),
 (02, 11),
 (03, 12),
 (04, 13),
 (05, 14),
 (06, 15),
 (07, 16),
 (10, 18),
 (08, 17),
 (02, 19),
 (02, 10),
 (03, 14),
 (04, 17),
 (10, 15),
 (10, 13),
 (09, 17),
 (03, 19),
 (05, 11),
 (07, 15),
 (02, 18);
 select * from GamePurchase;
 
 update Human
 set age = 23, name = 'Shawn Michael'
 where `name` = 'Shawn Michaels';