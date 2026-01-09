---
title: "Cookiecutter - Un outil 🐍 pour structurer ses projets"
description: "La structure de dossier d'un projet Python est un élément important pour un projet pérenne, assurant lisibilité et réutilisabilité du projet. Découvrez Cookiecutter-data-science, un pacakge python qui propose une structure de dossier robuste et répétable dans tous vos projets."
author: "Pierre-Etienne Toulemonde"
date:
  created: 2026-01-02
  updated: 2026-01-02
tags:
  - coding
  - python
---
# Cookiecutter-data-science - Un outil 🐍 pour structurer ses projets
*Version du package utilisée : 2.3.0*

## Présentation
[Cookiecutter](https://cookiecutter-data-science.drivendata.org/) (de son nom complet *Cookiecutter-data-science*) est un outil développé par [DrivenData](https://www.drivendata.org/) qui a pour but de structurer les projets Python. Le package propose via une interface CLI de prendre en charge l'ensemble des éléments de configurations du projets, de la création des différents dossiers de travail jusqu'à la configuration du gestionnaire de package projet et le linter utilisé.

<!-- more --> 

Les avantages de ce package sont les suivants : 
💪 Standardiser la structure de fichiers des projets, particulièrement utile pour les débutants et intermédiaires pour qui organiser ses fichiers de projets n'est pas encore une évidence, où les équipes qui ont besoin d'un standard
💪 Processus répétable de création de projet, donc pas de risque d'oublier un des éléments de configuration
💪 Interface CLI claire & facile à utiliser.

Attention à ne pas confondre Cookiecutter-data-science qui aide à l'initialisation d'un projet de data sicence, au package Python [Cookiecutter](https://github.com/cookiecutter/cookiecutter) qui propose de créer des templates de projets python facilement réutilisables par les autres utilisateurs. Le domaine d'action des 2 packages se chevauche largement, sauf que Cookiecutter-data-science est spécialement dédié à l'initialisation d'un projet data science via des templates. 

Si Cookiecutter-data-science a des avantages indéniables, il a aussi naturellement des défauts :
❌ Listes d'outils et de templates prédéfinis. Le package est assez large cependant pour reconfigurer manuellement quelques éléments si besoin, mais ces configurations manuelles ne seront pas répétables
❌ Pas d'initialisation de git même si git installé sur le système, avec l'utilisation de *repo_name* pour définir le dossier du projet et non le nom d'un repository comme laissé pensé.

## Installation
*Lors de la rédaction de cet article, version 2.3.0 du package*

### Installation et configuration minimale
```python
pipx install cookiecutter-data-science # Installation avec pipx (recommandé)

ccds # Lancer l'initalisation d'un nouveau projet
```
Cookiecutter v2 ne supporte que Python 3.9+ (Python version 3.9 et au-delà).

Les différentes étapes de configuration ([source avec tous les détails](https://cookiecutter-data-science.drivendata.org/all-options/)) sont (texte en bleu = texte par défaut si vous ne saisissez rien) : 
1. Si vous avez déjà installé Cookiecutter, voulez-vous le réinstaller (cf. partie *Installation approfondie ci-dessous*)

2. Nom du projet (impact : fichier de configuration)

3. Nom du repo git (impact : nom du dossier)

4. Nom du package (impact : nom du dossier du package du projet)

5. Nom de l'auteur (impact : fichier de configuration)

6. Description du projet (impact : fichier de configuration, README)

7. Version Python à utiliser 

8. Méthode de stockage de vos datasets de travail. *None* = stockage en local, sur votre ordinateur.

9. Manageur d'environnement

10. Fichier de dépendance

11. Installation des packages standards pour l'analyse de données (ipython, jupyterlab, matplotlib, notebook, numpy, pandas, scikit-learn)

12. Package de testing

13. Linter projet

14. Licence du projet

15. Pré-installation de mkdocs pour la documentation

16. Inclure du code de base dans le module python

### Installation approfondie

Cookiecutter peut être installé avec tous les outils : 
```python
uv add cookiecutter-data-science # Installation avec uv 
uv run ccds # Lancer le script

pip install cookiecutter-data-science # Installation avec pip

conda install cookiecutter-data-science # Installation
```

Lors de son installation, Cookiecutter crée un dossier */cookiecutters/cookiecutter-data-science* dans votre dossier d'utilisateur. Grâce à cette méthode, vous n'avez à l'installer qu'une seule fois, pour l'appeler n'importe où et autant de fois que vous voulez (faites le test : ouvrez un terminal et taper *ccds*, et Cookiecutter se lancera).

### Configuration approfondie

Pour utiliser la v1 du template de Cookiecutter : 
```python
ccds https://github.com/drivendataorg/cookiecutter-data-science -c v1
```

### Structure du dossier
La structure de dossier suivante est celle avec tous les fichiers. La votre différera selon les choix de configuration que vous ferez (Cookiecutter renseigne cette structure de fichier dans le README du projet) : 

```markdown
├── LICENSE            <- Licence
├── Makefile           <- Fichier Makefile
├── README.md          <- README du projet
├── data
│   ├── external       <- Données externes
│   ├── interim        <- Données intermédiaires de travail
│   ├── processed      <- Données finales, utilisées pour la modélisation par exemple
│   └── raw            <- Données brutes, d'entrée du projet
│
├── docs               <- Dossier de documentation Mkdocs
│
├── models             <- Dossier de stockage des différents modèles
│
├── notebooks          <- Notebooks de travail, par convention nommé par ordre d'exécution (exemple : *1.0-jqp-initial-data-exploration*)
│
├── pyproject.toml     <- Fichier de configuration du projet
│
├── references         <- Eléments additionnels d'explication du projet
│
├── reports            <- Rapports générés (LaTex, PDF, ... )
│   └── figures        <- Graphiques générés et à destination de présentation
│
├── requirements.txt   <- Requirements file (généré avec : *pip freeze > requirements.txt*)
│
├── setup.cfg          <- Fichier de configuration pour flake8
│
└── {{ cookiecutter.module_name }}   <- Dossier du package de votre projet, nommé selon votre paramétrage
    │
    ├── __init__.py             <- Ficheir standard python
    │
    ├── config.py               <- Variables et configuration
    │
    ├── dataset.py              <- Scripts pour télécharger et/ou générer des données
    │
    ├── features.py             <- Scripts pour les features des modèles
    │
    ├── modeling                
    │   ├── __init__.py 
    │   ├── predict.py          <- Scripts pour prédire à partir des modèles          
    │   └── train.py            <- Scripts pour entrainer les modèles
    │
    └── plots.py                <- Scripts de visualisation des données   
```

## Plus d'infos
- [Site web du package](https://cookiecutter-data-science.drivendata.org/)
- [Repository GitHub du package](https://github.com/drivendataorg/cookiecutter-data-science) 