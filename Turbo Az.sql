CREATE DATABASE TurboAz

USE TurboAz

CREATE TABLE Marka
(
	ID int primary key identity,
	Name nvarchar(35) UNIQUE
)

CREATE TABLE Model
(
	ID int primary key identity,
	Marka_ID int references Marka(ID),
	Name nvarchar(35) UNIQUE,
	Yurush int,
	Price int
)

CREATE TABLE Ban_Novu
(
	Ban_Novu_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Metric_System
(
	Metric_System_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Reng
(
	Reng_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Currency
(
	Currency_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Yanacaq_Novu
(
	Yanacaq_Novu_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Oturucu
(
	Oturucu_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Suretler_qutusu
(
	Suretler_qutusu_ID int primary key identity,
	Name nvarchar(35)
)

ALTER TABLE Model ADD Buraxilish_ili int
ALTER TABLE Model ADD Muherrikin_hecmi int
ALTER TABLE Model ADD Muherrikin_gucu int