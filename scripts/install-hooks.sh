#!/bin/bash
# 安装 Git Hooks

set -e

HOOKS_DIR=".git/hooks"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ ! -d .git ]; then
    echo "错误：不是 Git 仓库"
    exit 1
fi

echo "安装 pre-commit hook..."
cp "$SCRIPT_DIR/pre-commit" "$HOOKS_DIR/pre-commit"
chmod +x "$HOOKS_DIR/pre-commit"

echo "✓ Hooks 安装成功"
echo ""
echo "如需跳过 hooks：git commit --no-verify"
