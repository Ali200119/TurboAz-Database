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
	Mark_ID int references Marka(ID),
	Name nvarchar(35) UNIQUE
)

CREATE TABLE Ban_Novu
(
	Ban_Novu_ID int primary key identity,
	Name nvarchar(35)
)

CREATE TABLE Yurush
(
	Yurush_ID int primary key identity,
	Name nvarchar(35)
)