CREATE DATABASE E-PROD;
\c E-PROD;

CREATE TABLE COMMENTAIRE
(
    id      VARCHAR(42),
    contenu VARCHAR(42),
    slug    VARCHAR(42),
    note    VARCHAR(42),
    id_1    VARCHAR(42),
    id_2    VARCHAR(42),
    PRIMARY KEY (id)
);

CREATE TABLE PRODUIT
(
    id           VARCHAR(42),
    nom          VARCHAR(42),
    prix         VARCHAR(42),
    slug         VARCHAR(42),
    nomPhoto     VARCHAR(42),
    nomFichier   VARCHAR(42),
    description  VARCHAR(42),
    dateCreation DATE,
    dateMaj      VARCHAR(42),
    id_1         VARCHAR(42),
    PRIMARY KEY (id)
);

CREATE TABLE LIGNECOMMANDE
(
    id           VARCHAR(42),
    qte          VARCHAR(42),
    prixUnitaire VARCHAR(42),
    id_1         VARCHAR(42),
    PRIMARY KEY (id)
);

CREATE TABLE CATEGORIE
(
    id           VARCHAR(42),
    nom          VARCHAR(42),
    description  VARCHAR(42),
    slug         VARCHAR(42),
    dateCreation DATE,
    dateMaj      VARCHAR(42),
    id_1         VARCHAR(42),
    PRIMARY KEY (id)
);

CREATE TABLE USER
(
    id           VARCHAR(42),
    prenom       VARCHAR(42),
    nom          VARCHAR(42),
    email        VARCHAR(42),
    mdp          VARCHAR(42),
    datecreation DATE,
    datemaj      DATE,
    PRIMARY KEY (id)
);

CREATE TABLE COMMANDE
(
    id           VARCHAR(42),
    ref      VARCHAR(42),
    total        VARCHAR(42),
    status       VARCHAR(42),
    dateCreation VARCHAR(42),
    dateMaj      VARCHAR(42),
    id_1         VARCHAR(42),
    id_2         VARCHAR(42),
    PRIMARY KEY (id)
);

CREATE TABLE AVOIR
(
    id   VARCHAR(42),
    id_1 VARCHAR(42),
    PRIMARY KEY (id, id_1)
);

CREATE TABLE ROLE
(
    id  VARCHAR(42),
    nom VARCHAR(42),
    PRIMARY KEY (id)
);

CREATE TABLE ADRESSEDEFACTURATION
(
    id         VARCHAR(42),
    numerofact VARCHAR(42),
    voiefact   VARCHAR(42),
    cpfact     VARCHAR(42),
    villefact  VARCHAR(42),
    paysfact   VARCHAR(42),
    PRIMARY KEY (id)
);

ALTER TABLE COMMENTAIRE
    ADD FOREIGN KEY (id_2) REFERENCES PRODUIT (id);
ALTER TABLE COMMENTAIRE
    ADD FOREIGN KEY (id_1) REFERENCES USER (id);
ALTER TABLE PRODUIT
    ADD FOREIGN KEY (id_1) REFERENCES CATEGORIE (id);
ALTER TABLE LIGNECOMMANDE
    ADD FOREIGN KEY (id_1) REFERENCES PRODUIT (id);
ALTER TABLE CATEGORIE
    ADD FOREIGN KEY (id_1) REFERENCES CATEGORIE (id);
ALTER TABLE COMMANDE
    ADD FOREIGN KEY (id_2) REFERENCES ADRESSEDEFACTURATION (id);
ALTER TABLE COMMANDE
    ADD FOREIGN KEY (id_1) REFERENCES USER (id);
ALTER TABLE AVOIR
    ADD FOREIGN KEY (id_1) REFERENCES ROLE (id);
ALTER TABLE AVOIR
    ADD FOREIGN KEY (id) REFERENCES USER (id);