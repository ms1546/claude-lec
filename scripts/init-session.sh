#!/bin/bash

# 色付きの出力用
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Claude Learning Experience - セッション初期化${NC}"
echo ""

# セッションディレクトリの確認
if [ ! -d ".claude/session" ]; then
    echo -e "${YELLOW}⚠️  .claude/session ディレクトリが見つかりません。作成します...${NC}"
    mkdir -p .claude/session
fi

# セッションファイルの初期化
echo "📁 セッションファイルを初期化しています..."

# current-session.json
if [ -f ".claude/session/current-session.json.example" ]; then
    cp .claude/session/current-session.json.example .claude/session/current-session.json
    echo "  ✅ current-session.json を作成しました"
else
    echo -e "${YELLOW}  ⚠️  current-session.json.example が見つかりません${NC}"
fi

# progress.md
if [ -f ".claude/session/progress.md.template" ]; then
    cp .claude/session/progress.md.template .claude/session/progress.md
    echo "  ✅ progress.md を作成しました"
else
    echo -e "${YELLOW}  ⚠️  progress.md.template が見つかりません${NC}"
fi

# next-steps.md
if [ -f ".claude/session/next-steps.md.template" ]; then
    cp .claude/session/next-steps.md.template .claude/session/next-steps.md
    echo "  ✅ next-steps.md を作成しました"
else
    echo -e "${YELLOW}  ⚠️  next-steps.md.template が見つかりません${NC}"
fi

# LEARNING_STATUS.md
if [ -f "templates/LEARNING_STATUS.md" ]; then
    cp templates/LEARNING_STATUS.md LEARNING_STATUS.md
    echo "  ✅ LEARNING_STATUS.md を作成しました"
else
    echo -e "${YELLOW}  ⚠️  templates/LEARNING_STATUS.md が見つかりません${NC}"
fi

echo ""
echo -e "${GREEN}✨ セッションの初期化が完了しました！${NC}"
echo ""
echo "次のステップ:"
echo "  1. 'claude code .' でClaude Codeを起動"
echo "  2. 学習したい技術をClaude Codeに伝える"
echo "  3. 生成された学習計画に従って開発を開始"
echo ""
echo "💡 ヒント: 進捗はGitにコミットして記録しましょう！"