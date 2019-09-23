#! /bin/bash

# Create git repository
git init

# Stage and commit project template
git add .
git commit -m "Initial commit - set up cookiecutter project from template"

# Build docker image
make docker
