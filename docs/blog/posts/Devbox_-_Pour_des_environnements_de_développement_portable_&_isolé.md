---
title: "Devbox - Pour des environnements de développement portable & isolé"
description: "La gestion d'environnements de développement est un pilier du développement. Beaucoup d'outils existent mais trouvent vite leur limites. Devbox est une alternative riche, qui pourrait bien modifier profondément le domaine des environnements virtuels."
author: "Pierre-Etienne Toulemonde"
date:
  created: 2025-12-31
  updated: 2025-12-31
tags:
  - coding
---
# Devbox - Pour des environnements de développement portable & isolé

Si vous êtes développeur amateur ou professionnel, vous avez déjà dû tombé sur le cauchemar de tout développeur : le logiciel marche sur une machine mais pas sur une autre. Le marché regorge de solutions de création d'environnement virtuels : de la solution langage spécifique avec [uv](https://docs.astral.sh/uv/) au [pyenv](https://github.com/pyenv/pyenv) pour python, [npm](https://www.npmjs.com/) ou [Yarn](https://yarnpkg.com/) pour JavaScript jusqu'à des solutions de containerisation ou même de VM (machine virtuelle) en passant par [Conda](https://www.anaconda.com/docs/getting-started/miniconda/main). 
Aucune solution n'est véritablement langage-agnostic, légère et robuste. Le challenger au titre le plus sérieux me semble être Conda (miniconda bien sûr, on est entre aficionados du terminal et fan d'open source, pas entre cliqueurs de bouton sur le bureau 😉).

[Jetlify](https://www.jetify.com/) (anciennement Jetpack Technology) propose une solution très intéressante : [Devbox](https://www.jetify.com/devbox) ! <!-- more -->

**Qu'est-ce que Devbox ?**

Devbox est un outil en ligne de commande qui permet de créer facilement des environnements de développement. Il est sous licence Apache 2. Devbox fonctionne comme un gestionnaire de paquets. A la différence de gestionnaires de paquets comme Yarn, Devbox gère des paquets au niveau de l'OS (comme quand on installe un logiciel). Devbox utilise le registre de paquets [Nix](https://fr.wikipedia.org/wiki/Nix_(gestionnaire_de_paquets). 

Pour commencer avec Devbox, direction le [repository GitHub](https://github.com/jetify-com/devbox) ! Le repo met le lien vers le registre de packages installables : https://www.nixhub.io/.
Via son fichier de configuration, Devbox permet aussi un hook au lancement de l'environnement, des scripts projet-spécifiques, et peut même être utilisé dans des GitHub ou GitLab actions. 

Le site Neosoft a rédigé un joli [article](https://www.neosoft.fr/nos-publications/blog-tech/comment-devbox-permet-de-creer-un-environnement-de-developpement-reproductible-en-2-minutes/) sur DevBox en français avec notamment un comparatif vs Docker, VM et des gestionnaires de packages.

**En bref** : Les environnements virtuels sont un pilier du développement. De nombreuses solutions existent mais trouvent vite leur limites. Devbox est un logiciel créé pour gérer des environnement virtuels, réellement langage-agnostic, open source et portable. 

Devbox a les épaules pour devenir un réel game-changer dans son domaine. C'est un logiciel à suivre dans l'avenir ! 

A très vite 🙂