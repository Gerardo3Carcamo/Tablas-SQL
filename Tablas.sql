create table Cuadrilla(
	CuadrillaID int not null identity(1,1) primary key,
	CuadrillaName varchar(35) not null,
	UserID int not null,
	Foreign key(UserID) references Users(UserID)
);

create table UserCuadrilla(
	ID int not null identity(1,1) primary key,
	UserID int not null,
	Foreign key(UserID) references Users(UserID)
);
create table Colonias(
	ColoniaID int not null identity(1,1) primary key,
	Nombre varchar(40) not null,
	CodigoPostal char(5) not null
);
create table Tareas(
	TareaID int not null identity(1,1) primary key,
	Nombre varchar(50) not null,
	ColoniaID int not null,
	Descripcion varchar(150) not null,
	Foreign key(ColoniaID) references Colonias(ColoniaID)
);