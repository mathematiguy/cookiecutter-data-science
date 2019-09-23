#! /bin/bash

# Fail noisily
set -ex

# Create git repository
git init

# Stage and commit project template
git add .
git commit -m "Initial commit - set up cookiecutter project from template"

# Build docker image
make docker DOCKER_ARGS=--no-cache
