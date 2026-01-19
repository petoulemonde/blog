---
title: "Les BDD 🐍 in-memory"
description: "Les bases de données in-process sont des bases de données fonctionnant sur notre ordinateur. Ces bases sont une alternative intéressante aux bases de données plus classiques, permettant de drafter des projets ou de réaliser des projets maison beaucoup plus facilement."
author: "Pierre-Etienne Toulemonde"
date:
  created: 2026-01-19
  updated: 2026-01-19
tags:
  - coding
---
# Les BDD 🐍 in-memory

Nous utilisons tous au quotidien des bases de données et maitrisons clairement le concept : une armoire numérique d'informations rangées d'une certaine façon pour que le libraire (le logiciel) puisse retrouver très rapidement ce qu'il souhaite et parfois faire des opérations sur ces informations avant de nous les donner. Pratiquement, ce sont des ordinateurs très souvent dans le cloud, avec lesquels nous interagissons via des applications (l'appli de Drive pour la base de données de l'entreprise de notre drive, des bases de données de profils via des applications de rencontre, ...). Quand on nous parle de base de données, nous pensons tous à ces serveurs disponible 24h/24. 

Pourtant, tous les projets ne nécessitent pas un serveur ni même une disponibilité 24h/24, comme certains projets en local (ex : IA avec une base de connaissances sur notre ordinateur à nous) ou pendant des phases de développement précoce d'un projet lors de phases de test de faisabilité. C'est pour ces usages qu'existent les bases de données in-process (aussi appelée bases in-memory)  ! <!-- more -->

**Les 7 types de bases de données**

Les bases de données peuvent se découper en 7 familles. Pour chaque famille, une ou plusieurs bases de données python in-process existent : 
 
- Bases de données relationnelles (aussi appelé base SQL)
	- [Duckdb](https://github.com/duckdb/duckdb)
- Bases de données en colonnes
	- [MonetDB](https://github.com/MonetDBSolutions/MonetDBe-Python)
- Bases de données orientée document
	- [TinyDB](https://github.com/msiemens/tinydb)
	- [ArangoDB](https://github.com/arangodb/arangodb)
- Bases de données clé-valeur
	- *aucune base de données retrouvée. Meilleure alternative = PupDB ci-dessous.*
- Bases de donnéee Time Series (TSDB)
	- *aucune base de données retrouvée*
- Bases de données Graph
	- [ArangoDB](https://github.com/arangodb/arangodb)
- Bases de données vectorielles
	- [ChromaDB](https://github.com/chroma-core/chroma)

*J'ai retenu ici les bases qui sont directement utilisable avec les avoir importées dans python et python uniquement (j'ai exclu Docker et autres langages). Je n'ai pas retenu ici des bases qui nécessitent une installation en amont du chargement et de l'usage python, car je ne les considère pas vraiment comme in-process python.*

**Base de données in-process = base de donnée éphémère ?**

Non, une base de données in-process veut dire que la base de données tourne sur notre ordinateur et pas sur un serveur dédié. Les bases peuvent être enregistrées dans un fichier puis réouvertes.

**En bref** : Les bases de données in-process sont des bases de données fonctionnant sur notre ordinateur. Ces bases sont une alternative intéressante aux bases de données plus classiques, permettant de drafter des projets ou de réaliser des projets maison beaucoup plus facilement.

**Mentions honorables**

En faisant mes recherches, je suis tombé sur quelques bases de données que je trouve intéressantes, je les mets donc ici pour les curieux : 

- [PupDB](https://github.com/tuxmonk/pupdb)
- [MemGraph](https://github.com/memgraph/memgraph)

**Plus d'infos**

- [https://dbdb.io/](https://github.com/chroma-core/chroma), site qui dépose d'un tri pour identifier les bases de données in-memory : [https://dbdb.io/browse?storage-architecture=in-memory&q=](https://dbdb.io/browse?storage-architecture=in-memory&q=) 
- [https://en.wikipedia.org/wiki/List_of_in-memory_databases](https://en.wikipedia.org/wiki/List_of_in-memory_databases)