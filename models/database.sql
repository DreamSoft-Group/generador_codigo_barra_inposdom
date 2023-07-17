CREATE DATABASE generador;

use generador;

create table registros(
    id int auto_increment primary key,
    codI varchar(2) not null, 
    secuencial varchar(8) not null, 
    checkDigit varchar(1) not null,
    codF varchar(2) not null
);

INSERT INTO registros values(NULL, 1, '12345678', '5', 'DO');
INSERT INTO registros values(NULL, 1, '12345679', '0', 'DO');
INSERT INTO registros values(NULL, 2, '12345680', '3', 'DO');


create table TipoCodigos(
    id int auto_increment primary key,
    name varchar(2) not null
);

INSERT INTO TipoCodigos values(NULL, 'RR');
INSERT INTO TipoCodigos values(NULL, 'CP');

ALTER table registros (
    add constraint codI foreign
)
