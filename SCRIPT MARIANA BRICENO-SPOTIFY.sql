use spotify;

create table ARTIST(
id_artis int primary key,
Nombre varchar (30) not null,
Apellido varchar(30) not null,
AKA varchar (30) not null
);

create table album(
id_album int primary key,
nombre varchar (30),
apellido varchar (30),
AKA varchar (30),
id_artis int,
foreign key (id_artis) references artist (id_artis)
);

create table genero(
id_genero int primary key,
canciones varchar (30),
id_artis int,
idplay_list varchar (40),
id_album int,
FOREIGN KEY (id_artis) REFERENCES artist(id_artis),
FOREIGN KEY (id_album) REFERENCES album(id_album)
);

CREATE TABLE play_list (
    idplay_list INT PRIMARY KEY,
    album VARCHAR(40),
    id_artis int,
    id_genero int,
    FOREIGN KEY (id_artis) REFERENCES artist(id_artis),
    FOREIGN KEY (id_genero) REFERENCES genero(id_genero)
    );
    
    create table reproducciones (
        id_reproduc int primary key,
        id_artis int,
        id_album int,
        id_genero int,
        idplay_list int,
        foreign key (id_artis) references artist(id_artis),
        foreign key (id_album) references album(id_album),
        foreign key (id_genero) references genero(id_genero),
        foreign key (idplay_list) references play_list(idplay_list)
        );        