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
   subscribedTO
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
   eventName varchar(),
   description,
   organizer,
   startDate,
   endDate,
   startTime,
   endTime,
   searchTags,
   venue
);

create table hall (
   id serial primary key,
   capacity,
   hallName,
   venue
);

create table venue (
   id serial primary key,
   idOrg,
   location,
   name,
   locationDescription
);

create table seatingChart (
   id serial primary key,
   idHall,
   numOfSeats,
   seatingArrangment
);

create table seat (
   seatNum,
   idChart,
   aisleNum,
   reserved
);

create table validator (
   id serial primary key,
   idOrg,
   key,
   code
);

create table admin (
   id serial primary key,
   firstName,
   lastName,
   phoneNum,
   email,
   creationDate
);

-create table eventReport (
   idEvent

);

-create table history (

);

