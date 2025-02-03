# TP1
## Discover Docker
### Base de données

#### Procédure
```bash
# Création du réseau pour l'Adminer
docker network create devops-tp1-network

# Construire l'image
docker build -t devops-tp1-db .

# Lancement du conteneur de la db
docker run -d --name devops-tp1-db  --net=devops-tp1-network -p 5432:5432 devops-tp1-db

# Connexion à la db pour vérification
docker exec -it devops-tp1-db  psql -U usr -d db
# -> psql se lance normalement

# Lancement d'Adminer
docker run -p 8090:8080 --net=devops-tp1-network -d adminer
```

#### Questions
###### 1-1 Pourquoi utiliser le flag -e au moment de l'éxécution pour définir les variables environnement ?
> Eviter de stocker les informations sensibles dans le Dockerfile.
###### 1-2 Pourquoi avons-nous besoin d'un volume pour notre conteneur PostgreSQL ?
> Les données sont détruites à chaque kill du conteneur. Le but d'une base de donnée étant de stocker durablement des informations, on utilise un stockage indépendant du conteneur de db (un volume).