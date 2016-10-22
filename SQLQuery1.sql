drop table IF EXISTS CarFactory;
CREATE TABLE CarFactory (
    id                int,
	nameCarFactory    VARCHAR (40) ,
);
insert into CarFactory values ( 1, 'Toyota');
insert into CarFactory values ( 2, 'Mazda');
insert into CarFactory values ( 3, 'Ford');
insert into CarFactory values ( 4, 'Subaru');
select * from CarFactory;

drop table IF EXISTS CarModel;
CREATE TABLE CarModel (
    id           int,
	carModel     VARCHAR (40) 
);
insert into CarModel values ( 1, 'Yaris');
insert into CarModel values ( 1, 'Corolla');
insert into CarModel values ( 1, 'Corona');
insert into CarModel values ( 1, 'Camry');
insert into CarModel values ( 2, 'Demio');
insert into CarModel values ( 2, 'Mazda 3');
insert into CarModel values ( 2, 'Mazda 6');
insert into CarModel values ( 3, 'Laser');
insert into CarModel values ( 3, 'Cortina');
insert into CarModel values ( 3, 'Territory');
insert into CarModel values ( 4, 'Impreza');
insert into CarModel values ( 4, 'Legacy');
insert into CarModel values ( 4, 'Forester');
insert into CarModel values ( 4, 'Outback');
select * from  CarModel;


SELECT nameCarFactory, carModel FROM CarFactory JOIN CarModel ON CarFactory.id = CarModel.id;