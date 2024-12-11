CREATE DATABASE africa_geo_junior;

USE africa_geo_junior;

CREATE TABLE continent (
    id_continent int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(100) NOT null
);

CREATE TABLE pays (
    id_pays int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(200) NOT null,
    population int,
    langues varchar(200),
    id_continent int,
    FOREIGN KEY (id_continent) REFERENCES continent(id_continent) ON DELETE CASCADE
);



-- INSERT INTO continent (nom) VALUES ('Afrique');