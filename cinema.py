#connection a la base de données mysql cinemadb en localhost avec l'utilisateur root et le mot de passe ""
import mysql.connector

# Connexion à la base cinemadb
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",        # mot de passe vide
    database="cinemadb" # bonne base de données
)

# Création du curseur
cursor = conn.cursor()

# Requête (exemple avec la table Acteur)
cursor.execute("SELECT * FROM Acteur")

# Affichage des résultats
for row in cursor:
    print(row)

# Fermer la connexion
conn.close()