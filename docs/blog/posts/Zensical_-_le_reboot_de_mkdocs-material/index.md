---
title: "Zensical_le_reboot_de_mkdocs-material"
description: "Zensical est un logiciel de documentation en markdown et demain de blogging, avec le bon compromis facilité d'utilisation-personnalisation. Il prend la suite de Mkdocs-material. C'est un logiciel à garder en vue dans un futur proche."
author: "Pierre-Etienne Toulemonde"
date:
  created: 2025-12-19
  updated: 2025-12-20
tags:
  - coding
---
# Zensical : le reboot de mkdocs-material

[Mkdocs](https://www.mkdocs.org/) est un package python de documentation de projet, utilisant MarkDown pour la rédaction des pages. C'est un *static site generator*, au même titre que [Jekyll](https://jekyllrb.com/), [GitBook](https://www.gitbook.com/) ou [Mdbook](https://rust-lang.github.io/mdBook/). C'est une alternative plus simple à [Sphinx](https://www.sphinx-doc.org/en/master/), logiciel qui sert le même but (documenter ses projets). 
Si Mkdocs a été initialement conçu dans ce but, il peut aujourd'hui servir à d'autres fins : blogging, portfolio, ... Ses usages n'ont de limite que votre créativité 🙂

Ces frameworks simplifient la génération de ressources web, pour éviter au développeur d'aller sur des technologies web comme du HTML/CSS (pour les plus anciens) ou des frameworks JS type [Docusaurus](https://docusaurus.io/fr/) ou [AstroJS](https://astro.build/) pour la documentation.

<!-- more -->

Grâce à la communauté, Mkdocs a un nombre certains de thème et d'extensions sont disponibles, et notamment le thème et extension Mkdocs-material, qui permet de rédiger un site de doc' avec le thème [material](https://m3.material.io/) bien connu maintenant sur le web (c'est ce thème que j'utilise pour ce blog, je le trouve bien fait avec un bon compromis simplicité-personnalisation et un visuel plutôt stylé). Mkdocs-material ajoute une sur couche visuel mais aussi pratique riche (quelques exemples : le lien vers le repo GitHub en haut a droite avec le nombre de fork et d'étoiles, les social cards en bas, la navigation). Cette extension dispose aussi nativement d'une utilisation blog du site, avec le fait des pouvoir poster des billets comme un vrai blog et plus uniquement d'avoir des pages web statiques. 

En novembre 2025, squidfunk (mainteneur principal de Mkdocs-material) a décidé de se lancer un nouveau défi : créer le reboot de Mkdocs-material : [Zensical](https://zensical.org/) ! Zensical se veut vraiment être la continuité de Mkdoc-material, avec la possibilité à terme d'utiliser les plugins Mkdocs-material dans Zensical, avec une itération d'améliroation plus rapide et une meilleure relation avec les utilisateurs pour les mettre au centre de la création de l'outil ([source](https://zensical.org/about/)). Zensical reprend d'ailleurs des codes d'usages de Mkdocs-material avec les commandes `new`, `serve`, `build`.

<figure markdown="span">
  ![Logo Zensical](logo_zensical.png)
  <figcaption>source : <a href="https://github.com/zensical/zensical">GitHub Zensical</a></figcaption>
</figure>

J'ai essayé Zensical, et je reconnais comme l'interface est un peu plus moderne. ça se joue pas à grand chose (des angles un peu plus rond, un toggle mode light et dark, une autre police, ajout de petits logos par-ci par-là) mais mis bout à bout, je trouve Zensical plus joli. Coté fonctionnalité, Zensical est mature pour générer des pages statiques, mais encore en phase de développement pour le blogging et la création de flux RSS (pas encore mature pour mes besoins, dommage 😉).

Je vous remet le lien vers l'annonce de squidfunk, développeur principal de Mkdocs-material : https://squidfunk.github.io/mkdocs-material/blog/2025/11/05/zensical/ (je sais qu'il ne me lira pas mais je le remercie pour ce travail formidable qui me permet de créer ce blog) et le plus intéressant le lien vers [Zensical](https://zensical.org/) 🙂

Zensical n'est pas encore complètement terminé, ils promettent pas exemple ma compatibilité des plugins mkdocs-material avec zensical (j'attends particulièrement une fonctionnalité RSS). La [roadmap de dev](https://zensical.org/about/roadmap/) est sur le site si vous souhaitez en savoir plus.

**En bref** : Zensical est un logiciel de documentation en markdown et demain de blogging, avec le bon compromis facilité d'utilisation-personnalisation. Il prend la suite de Mkdocs-material. C'est un logiciel à garder en vue dans un futur proche.

A très vite 🙂

