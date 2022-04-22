CREATE DATABASE TurboAz

USE TurboAz

CREATE TABLE Marka
(
	Marka_ID int primary key identity,
	Name nvarchar(35) UNIQUE
)

CREATE TABLE Model
(
	Model_ID int primary key identity,
	Marka_ID int references Marka(Marka_ID),
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

CREATE TABLE Elan
(
	Model_ID int references Model(Model_ID),
	Ban_Novu_ID int references Ban_Novu(Ban_Novu_ID),
	Metric_System_ID int references Metric_System(Metric_System_ID),
	Reng_ID int references Reng(Reng_ID),
	Currency_ID int references Currency(Currency_ID),
	Yanacaq_Novu_ID int references Yanacaq_Novu(Yanacaq_Novu_ID),
	Oturucu_ID int references Oturucu(Oturucu_ID),
	Suretler_qutusu_ID int references Suretler_qutusu(Suretler_qutusu_ID)
)

SELECT * FROM Elan e
JOIN Model m
ON
e.Model_ID=m.Model_ID
JOIN Ban_Novu bn
ON
e.Ban_Novu_ID=bn.Ban_Novu_ID
JOIN Metric_System ms
ON
e.Metric_System_ID=ms.Metric_System_ID
JOIN Reng r
ON
e.Reng_ID=r.Reng_ID
JOIN Currency c
ON
e.Currency_ID=c.Currency_ID
JOIN Yanacaq_Novu yn
ON
e.Yanacaq_Novu_ID=yn.Yanacaq_Novu_ID
JOIN Oturucu o
ON
e.Oturucu_ID=o.Oturucu_ID
JOIN Suretler_qutusu sq
ON
e.Suretler_qutusu_ID=sq.Suretler_qutusu_ID