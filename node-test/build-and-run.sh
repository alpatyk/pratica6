#!/bin/bash

# Build e execução dos containers
docker-compose up --build --exit-code-from tester

# Limpeza após execução
docker-compose down