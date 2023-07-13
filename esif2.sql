
CREATE DATABASE bd_esif_technologies;


CREATE TABLE categorie (
    categorieid int NOT NULL AUTO_INCREMENT,
    nom  varchar(255),
    PRIMARY KEY (categorieid)
);


CREATE TABLE client (
    clientid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    prenom varchar (255),
    telephone int(255),
    PRIMARY KEY (clientid)
);


CREATE TABLE article (
    articleid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    prix varchar(255),
    categorieid INT,
    PRIMARY KEY (articleID),
    FOREIGN KEY (categorieid) REFERENCES categorie(categorieid)
);


CREATE TABLE vente (
    venteid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    prix char(255),
    clientid INT,
    articleid INT,
    PRIMARY KEY (venteid),
    FOREIGN KEY (clientid) REFERENCES client(clientid),
    FOREIGN KEY (articleid) REFERENCES article(articleid)
);


CREATE TABLE fournisseur (
    fournisseurid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    telephone int(255),
    email varchar(255),
    article varchar(255),
    prix char(255),
    PRIMARY KEY (fournisseurid)
);

 
CREATE TABLE achat (
    achatid int NOT NULL AUTO_INCREMENT,
    nom varchar(255),
    prix int(255),
    fournisseurid INT,
    articleid INT,
    PRIMARY KEY (achatid),
    FOREIGN KEY (fournisseurid) REFERENCES fournisseur(fournisseurid),
    FOREIGN KEY (articleid) REFERENCES article(articleid)
);


INSERT INTO categorie (categorieid, nom)
VALUES('1', 'HP Probook core i5'),
        ('2', 'TM137U'),
        ('3', 'Iphone 14 pro'),
        ('4', 'Bosch HXR39IG20'),
        ('5', 'Neumann U87 Ai');


INSERT INTO client (clientid, nom, prenom, telephone)
VALUES('1','Ouedraogo', 'Ousseni', '54758546'),
        ('2','Djimramadji', 'A.Kennnedy', '71322379'),
        ('3', 'Zoungrana', 'Salif', '45456987'),
        ('4','Donald', 'Trump', '78963214'),
        ('5','Elbachir', 'Khalifa', '65898741');


INSERT INTO article (articleid, nom, prix)
VALUES('1','HP Probook core i5', '700 000 FCFA'),
        ('2','TM137U', '15 000 FCFA'),
        ('3','Iphone 14 pro', '720 000 FCFA'),
        ('4', 'Bosch HXR39IG20', '300 000 FCFA'),
        ('5','Neumann U87 Ai', '2 061 790 FCFA');


INSERT INTO vente (venteid, nom, prix)
VALUES('1','HP Probook core i5', '700 000 FCFA'),
        ('2','TM137U', '15 000 FCFA'),
        ('3','Iphone 14 pro', '720 000 FCFA'),
        ('4','Bosch HXR39IG20', '300 000 FCFA'),
        ('5','Neumann U87 Ai', '2 061 790 FCFA');


INSERT INTO fournisseur (fournisseurid, nom, telephone, email, article, prix)
VALUES('1','EDIFFASO', '78255578', 'EDIFFASO@gmail.com', 'HP Probook core i5', '700 000 FCFA'),
        ('2','Kennedytechnologie', '71965412', 'Kennedytechnologie@gmail.com', 'TM137U', '15 000 FCFA'),
        ('3','Iphone', '99156834', 'Iphone@gmail.com', 'Iphone 14 pro', '720 000 FCFA'),
        ('4','Sharpindustry', '06596784', 'Sharpindustry@gmail.com', 'Bosch HXR39IG20', '300 000 FCFA'),
        ('5','PHilippstech', '68954321', 'PHilippstech@gmail.com', 'Neumann U87 Ai', '2 061 790 FCFA');


INSERT INTO achat (achatid, nom, prix)
VALUES('1','HP Probook core i5', '700 000 FCFA'),
        ('2','TM137U', '15 000 FCFA'),
        ('3','Iphone 14 pro', '720 000 FCFA'),
        ('4','Bosch HXR39IG20', '300 000 FCFA'),
        ('5','Neumann U87 Ai', '2 061 790 FCFA');