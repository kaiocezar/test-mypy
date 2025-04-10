#!/bin/bash

# Comparando com a branch master ou main
BASE_BRANCH="origin/master"
# Caso você use main, troque para: BASE_BRANCH="origin/main"

# Arquivos Python modificados
changed_files=$(git diff --name-only --diff-filter=ACM $BASE_BRANCH...HEAD -- '*.py')

if [ -z "$changed_files" ]; then
    echo "Nenhum arquivo Python modificado encontrado."
    exit 0
fi

echo "Rodando mypy nos arquivos modificados:"
echo "$changed_files"

mypy $changed_files
