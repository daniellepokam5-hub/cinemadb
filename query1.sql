CREATE TABLE Acteur (
    idActeur INT PRIMARY KEY,
    nomActeur VARCHAR(100)
);

CREATE TABLE Film (
    idFilm INT PRIMARY KEY,
    titreFilm VARCHAR(100)
);

-- Table de liaison (relation N-N)
CREATE TABLE Jouer (
    idActeur INT,
    idFilm INT,
    PRIMARY KEY (idActeur, idFilm),
    FOREIGN KEY (idActeur) REFERENCES Acteur(idActeur),
    FOREIGN KEY (idFilm) REFERENCES Film(idFilm)
);
INSERT INTO Film (idFilm, titreFilm) VALUES
(1, 'Inception'),
(2, 'Fight Club'),
(3, 'Mr and Mrs Smith'),
(4, 'Forrest Gump'),
(5, 'Avengers'),
(6, 'Pirates des Caraïbes'),
(7, 'Seven'),
(8, 'Harry Potter'),
(9, 'Iron Man'),
(10, 'Men in Black');

SELECT A.nomActeur, F.titreFilm
FROM Jouer J
JOIN Acteur A ON J.idActeur = A.idActeur
JOIN Film F ON J.idFilm = F.idFilm;

