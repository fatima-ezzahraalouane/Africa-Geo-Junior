CREATE DATABASE africageo_junior;

USE africageo_junior;

CREATE TABLE continent (
    id_continent INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(300) NOT NULL UNIQUE
);

CREATE TABLE pays (
    id_pays INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(300) NOT NULL UNIQUE,
    population INT NOT NULL,
    langues VARCHAR(300) NOT NULL,
    imageURL VARCHAR(500),
    id_continent INT NOT NULL,
    FOREIGN KEY (id_continent) REFERENCES continent(id_continent) ON DELETE CASCADE
);

CREATE TABLE ville (
    id_ville int NOT null AUTO_INCREMENT PRIMARY KEY,
    nom varchar(300) NOT null UNIQUE,
    description text,
    type ENUM('Capitale', 'Autre') NOT null,
    id_pays int NOT null,
    FOREIGN KEY (id_pays) REFERENCES pays(id_pays) ON DELETE CASCADE
);

INSERT INTO continent (nom) VALUES ('Afrique');

INSERT INTO pays (nom, population, langues, imageURL, id_continent)
VALUES
('Maroc', 37000000, 'Arabe, Français, Amazigh', 'https://example.com/maroc.jpg', 1),
('Algérie', 44700000, 'Arabe, Berbère, Français', 'https://example.com/algerie.jpg', 1),
('Tunisie', 12000000, 'Arabe, Français', 'https://example.com/tunisie.jpg', 1),
('Égypte', 109000000, 'Arabe', 'https://example.com/egypte.jpg', 1),  
('Côte d’Ivoire', 28000000, 'Français', 'https://example.com/cotedivoire.jpg', 1),  
('Ghana', 34000000, 'Anglais', 'https://example.com/ghana.jpg', 1),
('Angola', 36000000, 'Portugais', 'https://example.com/angola.jpg', 1),  
('Cameroun', 29000000, 'Français, Anglais', 'https://example.com/cameroun.jpg', 1),
('Tanzanie', 64000000, 'Swahili, Anglais', 'https://example.com/tanzanie.jpg', 1),  
('Mozambique', 33000000, 'Portugais', 'https://example.com/mozambique.jpg', 1), 
('Sénégal', 17800000, 'Français, Wolof', 'https://example.com/senegal.jpg', 1),  
('Kenya', 56000000, 'Anglais, Swahili', 'https://example.com/kenya.jpg', 1);

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


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Maputo', 'Capitale du Mozambique', 'Capitale', 10),  
('Beira', 'Ville portuaire', 'Autre', 10),  
('Nampula', 'Ville commerciale', 'Autre', 10),  
('Quelimane', 'Ville côtière', 'Autre', 10),  
('Tete', 'Ville minière', 'Autre', 10),  
('Pemba', 'Station balnéaire', 'Autre', 10);


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Dakar', 'Capitale du Sénégal', 'Capitale', 11),  
('Saint-Louis', 'Ville historique', 'Autre', 11),  
('Thiès', 'Ville industrielle', 'Autre', 11),  
('Ziguinchor', 'Ville portuaire', 'Autre', 11),  
('Kaolack', 'Ville agricole', 'Autre', 11),  
('Touba', 'Ville religieuse', 'Autre', 11);  


INSERT INTO ville (nom, description, type, id_pays)  
VALUES  
('Nairobi', 'Capitale du Kenya', 'Capitale', 12),  
('Mombasa', 'Ville portuaire', 'Autre', 12),  
('Kisumu', 'Ville lacustre', 'Autre', 12),  
('Nakuru', 'Ville touristique', 'Autre', 12),  
('Eldoret', 'Ville industrielle', 'Autre', 12),  
('Malindi', 'Ville côtière', 'Autre', 12);  


UPDATE pays
SET population = 38000000, langues = 'Arabe, Français, Amazigh, Anglais'
WHERE nom = 'Maroc';