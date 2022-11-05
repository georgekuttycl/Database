create database fms;
use fms;
create table customer(id int not null ,name varchar(50),email varchar(100) not null unique, age int, dob date);
create table flight(flight_no int not null primary key,flight_name varchar(100) not null,flight_des varchar(150) not null,flight_tot int not null);
create table passenger(pass_id int not null primary key,pass_name varchar(50) not null,pass_usr varchar(50) not null,email varchar(100) not null,psd varchar(50) not null,mobile int not null unique, address varchar(150) not null,dob date);
create table flight_schedule(
id int PRIMARY KEY ,
flight_from varchar(50),
flight_to varchar(50),
flight_date date,
flight_time time,
cost int,
flight_number int,
constraint FK_flight_flightno foreign key(flight_number) references flight(flight_no)
 );
 
 create table booked_ticket(
ticket_number  int PRIMARY KEY ,
flight_from varchar(50),
flight_to varchar(50),
booking_date date,
travel_date date,
flight_time time,
boarding_time time,
flight_seat varchar(50),
passenger_id int,
flight_number int,
constraint FK_booking_passengerid foreign key(passenger_id) references passenger(id),
constraint FK_booking_flightno foreign key(flight_number) references flight(flight_no)  
 );
