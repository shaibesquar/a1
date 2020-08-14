create table ticket (
   id serial primary key,
   code varchar(30),
   idEvent integer,
   idseat integer,
   price integer,
   type varchar(15)
);

create table ticketBuyer (
   id serial primary key,
   firstName varchar(20),
   lastName varchar(20),
   sex char(1),
   phoneNum integer,
   email varchar(30),
   birthYear integer, 
   creationDate Date,
   subscribedTO integer
);

create table eventOrganizer(
   id serial primary key,
   orgName varchar(30),
   phoneNum integer,
   website varchar(30),
   -venue,
   verified boolean
);

create table event (
   id serial primary key,
   eventName varchar(20),
   description varchar(100),
   idOrganizer integer,
   startDate date,
   endDate date,
   startTime time,
   endTime time,
   searchTag varchar(10),
   idvenue integer,
   type varchar(20),
   status varchar(20)
);

create table hall (
   id serial primary key,
   capacity integer,
   hallName varchar(20),
   idVenue integer
);

create table venue (
   id serial primary key,
   idOrg integer,
   location varchar(50), !-- url to html file containing map
   name varchar(20),
   locationDescription varchar(50)
);

create table seatingChart ( !-- when should it be created?
   id serial primary key,
   idHall integer,
   numOfSeats integer,
   seatingArrangment 
);

create table seat (
   seatNum varchar(5),
   idChart integer,
   aisleNum varchar(2),
   rowNum varchar(3),
   reserved boolean
);

create table validator (
   id serial primary key,
   idOrg integer,
   key varchar(30),
   code 
);

create table admin (
   id serial primary key,
   firstName varchar(20),
   lastName varchar(20),
   phoneNum integer,
   email varchar(30),
   creationDate date
);

-create table eventReport (
   idEvent

);

-create table history (

);

