# TP1
###### 1-1 Pourquoi utiliser le flag -e au moment de l'éxécution pour définir les variables environnement ?
> Eviter de stocker les informations sensibles dans le Dockerfile.
###### 1-2 Pourquoi avons-nous besoin d'un volume pour notre conteneur PostgreSQL ?
> Les données sont détruites à chaque kill du conteneur. Le but d'une base de donnée étant de stocker durablement des informations, on utilise un stockage indépendant du conteneur de db (un volume).
###### 1-3 Documentez les éléments essentiels de votre conteneur de base de données : commandes et Dockerfile.
```Dockerfile
FROM postgres:14.1-alpine

ENV POSTGRES_DB=db \
    POSTGRES_USER=usr \
    POSTGRES_PASSWORD=pwd
```
```bash
# Création du réseau pour l'Adminer
docker network create devops-network

# Construire l'image
docker build -t devops-db .

# Lancement du conteneur de la db
docker run -d --name devops-db  --net=devops-tp1-network -p 5432:5432 devops-db

# Connexion à la db pour vérification
docker exec -it devops-db psql -U usr -d db
# -> psql se lance normalement

# Lancement d'Adminer
docker run -p 8090:8080 --net=devops-tp1-network -d adminer
```
###### 1-4 Pourquoi avons-nous besoin d'une construction multistage ? Et expliquez chaque étape de ce Dockerfile.
```Dockerfile
# Phase de compilation
FROM eclipse-temurin:21-jdk-alpine

COPY . /usr/src/app
WORKDIR /usr/src/app
RUN javac Main.java

```