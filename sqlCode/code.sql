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

INSERT INTO continent (nom) VALUES ('Afrique');

INSERT INTO pays (nom, population, langues, id_continent)
VALUES
('Maroc', 37000000, 'Arabe, Français, Amazigh', 1), 
('Algérie', 44700000, 'Arabe, Berbère, Français', 1),  
('Tunisie', 12000000, 'Arabe, Français', 1),
('Égypte', 109000000, 'Arabe', 1),  
('Côte d’Ivoire', 28000000, 'Français', 1),  
('Ghana', 34000000, 'Anglais', 1),
('Angola', 36000000, 'Portugais', 1),  
('Cameroun', 29000000, 'Français, Anglais', 1),
('Tanzanie', 64000000, 'Swahili, Anglais', 1),  
('Mozambique', 33000000, 'Portugais', 1), 
('Sénégal', 17800000, 'Français, Wolof', 1),  
('Tanzanie', 64000000, 'Swahili, Anglais', 1);


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Rabat', 'Capitale administrative du Maroc', 'Capitale', 1),  
('Casablanca', 'Ville économique du Maroc', 'Autre', 1),  
('Safi', 'Ville portuaire connue pour la pêche et la poterie', 'Autre', 1),
('Marrakech', 'Ville touristique célèbre pour sa médina et ses souks', 'Autre', 1), 
('Fès', 'Ville historique connue pour sa médina et ses universités', 'Autre', 1),
('Tanger', 'Ville portuaire stratégique reliant l\'Europe et l\'Afrique', 'Autre', 1);



INSERT INTO ville (nom, description, type, id_pays)
VALUES
('Alger', 'Capitale de l\'Algérie', 'Capitale', 2),  
('Oran', 'Ville portuaire', 'Autre', 2),  
('Constantine', 'Ville historique', 'Autre', 2),  
('Annaba', 'Ville côtière', 'Autre', 2), 
('Tlemcen', 'Ville culturelle', 'Autre', 2), 
('Ghardaïa', 'Ville du désert', 'Autre', 2);