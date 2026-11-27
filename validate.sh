#!/usr/bin/env bash

set -e

echo "=== Verificando formato Terraform ==="
terraform fmt -check -diff

echo "=== Formato correcto ==="

echo "=== Validando configuracion Terraform ==="
terraform validate

echo "=== Configuracion valida ==="

echo "=== Evaluando cambios de infraestructura ==="

if terraform plan -detailed-exitcode; then
    echo "=== Plan correcto: sin cambios ==="
else
    codigo=$?

    if [ "$codigo" -eq 2 ]; then
        echo "=== Plan correcto: hay cambios pendientes ==="
    else
        echo "=== Error en terrform plan (codigo $codigo) ==="
        exit "$codigo"
    fi
fi
