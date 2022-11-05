create database cms;
use cms;
create table cab(cab_no int not null primary key,cab_name varchar(100) not null,cab_des varchar(150) not null,cab_tot int not null);
create table passenger(pass_id int not null primary key,pass_name varchar(50) not null,pass_usr varchar(50) not null,email varchar(100) not null,psd varchar(50) not null,mobile int not null unique, address varchar(150) not null,dob date);
 create table booked_ticket(
ticket_number  int PRIMARY KEY ,
cab_from varchar(50),
cab_to varchar(50),
booking_date date,
cab_time time,
passenger_id int,
cab_number int,
constraint FK_booking_passengerid foreign key(passenger_id) references passenger(pass_id),
constraint FK_booking_cabno foreign key(cab_number) references cab(cab_no)  
 );
