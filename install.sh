#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$SCRIPT_DIR/skill"

echo ""
echo "=== EnP App Guidelines — Instalador Cursor ==="
echo ""

if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "Erro: skill/SKILL.md nao encontrado em $SCRIPT_DIR"
  exit 1
fi

echo "Onde deseja instalar?"
echo "  [1] Todos os projetos  (nivel de usuario - ~/.cursor/)"
echo "  [2] Apenas este projeto (nivel de projeto - ./.cursor/)"
echo ""

while true; do
  read -r -p "Escolha (1 ou 2): " CHOICE
  case "$CHOICE" in
    1|2) break ;;
    *) echo "Opcao invalida. Digite 1 ou 2." ;;
  esac
done

if [ "$CHOICE" = "1" ]; then
  SKILL_DEST="$HOME/.cursor/skills/enp-app-guidelines"
  SCOPE="usuario (todos os projetos)"
else
  SKILL_DEST="./.cursor/skills/enp-app-guidelines"
  SCOPE="projeto (apenas este diretorio)"
fi

echo ""
echo "Instalando em nivel de $SCOPE..."
echo ""

mkdir -p "$SKILL_DEST"

for f in "$SKILL_DIR"/*.md; do
  fname=$(basename "$f")
  cp "$f" "$SKILL_DEST/$fname"
  echo "  Skill copiada: $fname"
done

echo ""
echo "Instalacao concluida ($SCOPE). Reinicie o Cursor para ativar."
echo ""
echo "IMPORTANTE: esta skill requer o enp-design-system para funcionar."
echo "Se ainda nao instalou: https://github.com/eduardogasparetto-cpu/enp-design-system"
echo ""
