#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$SCRIPT_DIR/skill"

SKILL_DEST="$HOME/.cursor/skills/enp-app-guidelines"

echo ""
echo "=== EnP App Guidelines — Instalador Cursor ==="
echo ""

if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "Erro: skill/SKILL.md nao encontrado em $SCRIPT_DIR"
  exit 1
fi

mkdir -p "$SKILL_DEST"

for f in "$SKILL_DIR"/*.md; do
  fname=$(basename "$f")
  cp "$f" "$SKILL_DEST/$fname"
  echo "  Skill copiada: $fname"
done

echo ""
echo "Instalacao concluida. Reinicie o Cursor para ativar."
echo ""
echo "IMPORTANTE: esta skill requer o enp-design-system para funcionar."
echo "Se ainda nao instalou: https://github.com/eduardogasparetto-cpu/enp-design-system"
echo ""
