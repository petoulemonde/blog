hello:
	
	@echo Bonjour je suis Make. Comme puis-je vous aider ?
	@echo - serve : simule le site localement pour le dev
	@echo - deploy : pousse les modifications en ligne

serve:
	@echo Initialisation de la simulation locale
	uv run mkdocs serve --livereload

deploy: 
	@echo Initialisation du déploiement
	uv run mkdocs gh-deploy -r github