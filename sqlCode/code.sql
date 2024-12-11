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


INSERT INTO ville (nom, description, type, id_pays)
VALUES
('Tunis', 'Capitale de la Tunisie', 'Capitale', 3),  
('Sfax', 'Ville portuaire', 'Autre', 3),  
('Sousse', 'Ville touristique', 'Autre', 3),  
('Monastir', 'Ville côtière', 'Autre', 3),  
('Gabès', 'Ville du sud', 'Autre', 3),  
('Bizerte', 'Ville du nord', 'Autre', 3); 


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Le Caire', 'Capitale de l\'Égypte', 'Capitale', 4),  
('Alexandrie', 'Ville portuaire', 'Autre', 4),  
('Louxor', 'Ville historique', 'Autre', 4),  
('Assouan', 'Ville touristique', 'Autre', 4),  
('Gizeh', 'Ville des pyramides', 'Autre', 4),  
('Charm el-Cheikh', 'Station balnéaire', 'Autre', 4); 


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Yamoussoukro', 'Capitale politique', 'Capitale', 5),  
('Abidjan', 'Ville économique', 'Autre', 5),  
('Bouaké', 'Ville industrielle', 'Autre', 5),  
('Daloa', 'Ville agricole', 'Autre', 5),  
('San Pedro', 'Ville portuaire', 'Autre', 5),  
('Korhogo', 'Ville culturelle', 'Autre', 5); 


INSERT INTO ville (nom, description, type, id_pays)  
VALUES 
('Accra', 'Capitale du Ghana', 'Capitale', 6),  
('Kumasi', 'Ville historique', 'Autre', 6),  
('Tamale', 'Ville du nord', 'Autre', 6),  
('Cape Coast', 'Ville côtière', 'Autre', 6),  
('Takoradi', 'Ville portuaire', 'Autre', 6),  
('Tema', 'Ville industrielle', 'Autre', 6);  


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Luanda', 'Capitale de l\'Angola', 'Capitale', 7),  
('Benguela', 'Ville portuaire', 'Autre', 7),  
('Lobito', 'Ville industrielle', 'Autre', 7),  
('Huambo', 'Ville agricole', 'Autre', 7),  
('Malanje', 'Ville culturelle', 'Autre', 7),  
('Lubango', 'Ville montagneuse', 'Autre', 7);


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Yaoundé', 'Capitale du Cameroun', 'Capitale', 8),  
('Douala', 'Ville portuaire', 'Autre', 8),  
('Garoua', 'Ville commerciale', 'Autre', 8),  
('Maroua', 'Ville saharienne', 'Autre', 8),  
('Bamenda', 'Ville culturelle', 'Autre', 8),  
('Bafoussam', 'Ville agricole', 'Autre', 8);


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Dodoma', 'Capitale de la Tanzanie', 'Capitale', 9),  
('Dar es Salam', 'Ville portuaire', 'Autre', 9),  
('Arusha', 'Ville touristique', 'Autre', 9),  
('Mwanza', 'Ville industrielle', 'Autre', 9),  
('Mbeya', 'Ville agricole', 'Autre', 9),  
('Zanzibar', 'Île touristique', 'Autre', 9);  