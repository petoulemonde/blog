---
title: "NVIDIA crée le confidentiel computing"
description: "NVIDIA crée le confidential computing, une technologie logicielle qui permet d'assurer la sécurité des données pendant leur utilisation. Cette techno est notamment intéressante dans l'IA où rapidité et sécurité sont 2 piliers essentielles."
author: "Pierre-Etienne Toulemonde"
date:
  created: 2025-12-21
  updated: 2025-12-21
tags:
  - coding
---
# NVIDIA crée le confidential computing

T'es-tu déjà demandé quels étaient les 3 états d'une donnée ? 

Je suis à peut près sûr que non (jusqu'ici c'est normal 🙂), quel est l'intérêt de se poser ce genre de question d'ailleurs ? Si les 3 états n'ont pas franchement d'intérêt, la capacité à sécuriser une données à chaque étape en a une !

Une donnée peut avoir 3 états : 

- en stockage : stockée sur un espace mémoire. La sécurité pour cet état est bien connue et largement déployée (contrôle d'accès à la mémoire, chiffrement des données),

- en transit : la donnée est en transit d'un endroit à un autre. Ici aussi, les moyens de sécurité sont bien connus et bien deployés,

- en traitement : la donnée est d'utilisation par un processus (exemple : utilisation des valeurs d'une colonne pour en calculer la moyenne). Ici impossible de chiffrer les données puisqu'elles doivent être lisible pour être utilisée, toute personne qui aurait accès au système aura accès à vos données en cours de traitement finalement. 

Peu d'entreprises aujourd'hui disposent de leur propres serveurs et les louent. En tant qu'individu, nous n'avons pas envie que nos données que nous confions à d'autres fuitent parce que la protection pendant leur usage est moindre. La sécurité comme une chaîne tient à son maillon le plus faible, et la protection est données en cours de traitement est le maillon fragile de la chaîne de sécurité des données du fait de l'absence de chiffrement. Pourtant des solutions existent.

<!-- more -->

**Le chiffrement homomorphe**

La première solution est le [chiffrement homomorphe](https://fr.wikipedia.org/wiki/Chiffrement_homomorphe) (on parle d'algorithme de chiffrement homomorphe pour être exact). L'idée est intéressante : chiffrer les données d'une manière qui permette de réaliser certaines opérations mathématiques sur ces données sans même avoir à les déchiffrer !

✅ : La donnée reste chiffrée même pendant son utilisation, permettant un chiffrement quelque soit l'état de la donnée.

❌ : seule certaines opérations mathématiques sont possibles.

**Le confidential computing**

La nouveauté sur le sujet vient de NVIDIA qui développe du [confidential computing](https://blogs.nvidia.com/blog/what-is-confidential-computing/) : plutôt que de répondre par les mathématiques à ce soucis, NVIDIA répond par l'approche logiciel, en permettant l'analyse de données dans un espace dédiée aux données et inaccessible au système lui-même, c'est le confidential computing.

✅ : les opérations ne sont pas limitées par une méthode de chiffrement car on dispose des données déchiffrée et d'un GPU. L'utilisation d'un GPU permet aussi d'accélérer les calculs mathématiques notamment pour l'IA dont l'enjeu aujourd'hui est d'avoir des systèmes rapides et sécurisés ! NVIDIA y dédie une [page](https://www.nvidia.com/en-us/data-center/solutions/confidential-computing/).

❌ La techno est assez nouvelle, la promesse est belle mais la mise en place demandera du temps. Si NVIDIA a déjà fait ses preuves côté techno, NVIDIA va devoir convaincre de la nécessité pour favoriser l'adoption.

**En bref** : NVIDIA crée le confidential computing, une technologie logicielle qui permet d'assurer la sécurité des données pendant leur utilisation. Cette techno est notamment intéressante dans l'IA où rapidité et sécurité sont 2 piliers essentielles.


A très vite 🙂