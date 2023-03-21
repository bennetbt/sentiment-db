# sentiment-db

This repository contains a simple MySQL database for storing sentiment searches.

# Building the container image
Within the sentiment-db directory first run:
	docker build --tag docker-db .
Then run:
	docker run -d --name db -p 5002:5432 docker-db
	