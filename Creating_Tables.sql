 -- create database demo; --
use demo; 
/*
create table  table_name(
column_name datatype optional constraint,
column_name datatype optional constraint,
column_name datatype optional constraint,
--------
constraint constraint_name constraint_type(column_name)
),
**/

create table Human(
`HumanId` int(10) not null,
`name` varchar(38) not null,
`age` int(35) not null,
`gender` varchar(1) not null,
bloodType varchar(3) not null,
Genotype varchar(3) not null,
-- define the primary key --
constraint human_PK Primary key (HumanId)
);

create table Games(
`gameId` int(3) not null,
`Gamename` varchar(38) not null,
`price` numeric(4,2) not null, -- Accept 4 values and the decimal point will be after the second digit --
`quantity` int(3) not null,
Location varchar(25) not null,
constraint Games_PK primary key(gameId)
);

create table GamePurchase(
humanId int(18) not null,
`gameId` int(3) not null,
`orderDate` timestamp not null default CURRENT_TIMESTAMP,
constraint Order_Pk Primary Key(humanId, gameId),
constraint human_fk foreign key(HumanId)
					references Human(humanId),
constraint games_fk foreign key(gameId)
					references Games(gameId)
								
);

-- Iserting values into tables --
