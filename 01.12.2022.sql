create database telephone;
use telephone;

create table Subscriber (
cd_subscriber int not null primary key,
nm_subscriber varchar(50));
create table TypeSubscriber (
cd_type int not null primary key,
ds_type varchar(1));
create table Activity (
cd_branch int not null primary key,
ds_branch varchar(1));
create table Address (
cd_address int not null primary key,
ds_address varchar(1),
complement varchar(50),
district varchar(50),
zip_code int not null);
create table City (
cd_city int not null primary key,
ds_city varchar(1));
create table Cellphone (
cd_phone int not null primary key,
area_code int,
n_phone int);

SELECT Subscriber.cd_subscriber, Activity.cd_branch
FROM Subscriber
INNER JOIN Activity ON Subscriber.cd_subscriber;
SELECT Subscriber.cd_subscriber, TypeSubscriber.cd_type
FROM Subscriber
INNER JOIN TypeSubscriber ON Subscriber.cd_subscriber;
SELECT Subscriber.cd_subscriber, Address.cd_address
FROM Subscriber
INNER JOIN Address ON Subscriber.cd_subscriber;
SELECT Address.cd_address, City.cd_city
FROM Address
INNER JOIN City ON Address.cd_address;
SELECT Address.cd_address, Cellphone.cd_phone
FROM Address
INNER JOIN Cellphone ON Address.cd_address;
SELECT Subscriber.nm_subscriber, Cellphone.n_phone, TypeSubscriber.cd_type, Address.cd_address
from Subscriber
INNER JOIN Cellphone ON Subscriber.nm_subscriber
INNER JOIN TypeSubscriber ON Subscriber.nm_subscriber
INNER JOIN Address ON Subscriber.nm_subscriber
where cd_address='Pelotas'
or cd_address='Canguçu';
