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

CREATE TABLE ville (
    id_ville int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(200) NOT null,
    description text,
    type ENUM('Capitale', 'Autre') NOT null,
    id_pays int,
    FOREIGN KEY (id_pays) REFERENCES pays(id_pays) ON DELETE CASCADE
);

-- INSERT INTO continent (nom) VALUES ('Afrique');