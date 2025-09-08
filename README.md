# Claude Learning Experience (Claude-LEC)

エンジニアがClaude Codeと対話しながら、任意の技術を習得するための動的学習テンプレートシステムです。

## 概要

このプロジェクトは技術に依存しない学習フレームワークです。エンジニアが学びたい技術をClaude Codeに伝えると、その場で最適な学習計画を生成し、実践的なアプリケーション開発を通じて技術習得をサポートします。

## 特徴

- 🎯 **動的学習計画**: 学びたい技術に応じてカスタム学習計画を生成
- 🤖 **AIメンター**: Claude Codeが個別指導で常にサポート
- 🔄 **適応的学習**: 進捗と理解度に応じて内容を調整
- 📊 **段階的アプローチ**: 基礎から応用まで体系的に学習
- 🛠 **実践重視**: 実際に動くアプリケーションを作りながら学習
- 🌐 **技術非依存**: どんな技術スタックでも対応可能

## 使い方

### 1. このテンプレートから自分の学習リポジトリを作成

#### 方法A: クローンして設定（推奨）
```bash
# テンプレートをクローン（プロジェクト名は自由に変更）
git clone https://github.com/yourusername/claude-lec.git my-learning
```

#### 方法B: GitHubでテンプレートとして使用
1. このリポジトリのGitHubページで「Use this template」ボタンをクリック
2. 新しいリポジトリ名を入力（例: `my-learning`）
3. リポジトリを作成してクローン

### 2. 学習セッションを初期化

```bash
# セッション管理ファイルを初期化
./scripts/init-session.sh
```

このスクリプトは以下のファイルを作成します：
- `.claude/session/current-session.json` - 現在の学習状態
- `.claude/session/progress.md` - 進捗記録
- `.claude/session/next-steps.md` - 次のアクション
- `LEARNING_STATUS.md` - 人間が読める進捗ファイル

※ これらのファイルは`.gitignore`に登録されているため、個人の学習記録はローカルに保持されます。

### 3. Claude Codeを起動

```bash
claude code .
```

### 3. 学習開始

Claude Codeが以下のようにヒアリングを始めます：

```
「こんにちは！Claude Learning Experienceへようこそ。
新しい技術を学習する準備をしましょう。

まず、以下について教えてください：
1. 学習したい技術やフレームワークは何ですか？
2. 現在のプログラミング経験レベルは？
3. 作りたいアプリケーションのタイプは？
4. 学習に使える時間は？」
```

あなたの回答に基づいて、Claude Codeが最適な学習計画を作成します。

## 学習の流れ

### Phase 0: Discovery（発見）
- 学習目標のヒアリング
- 技術スタックの決定
- プロジェクトの提案

### Phase 1: Foundation（基礎）
- 環境構築
- 基本的な実装
- 開発フローの確立

### Phase 2: Core Features（コア機能）
- 主要機能の実装
- データ管理
- テストの作成

### Phase 3: Advanced Features（応用機能）
- 高度な機能の追加
- 最適化
- セキュリティ強化

### Phase 4: Polish（仕上げ）
- デプロイメント
- ドキュメント作成
- 振り返りと次のステップ

## 対応可能な技術の例

- **フロントエンド**: React, Vue.js, Angular, Svelte, Next.js, Nuxt.js
- **バックエンド**: Node.js, Python, Go, Rust, Java, Ruby
- **モバイル**: React Native, Flutter, Swift, Kotlin
- **データベース**: PostgreSQL, MySQL, MongoDB, Redis, Supabase
- **クラウド**: AWS, Google Cloud, Azure, Vercel, Netlify
- **その他**: Docker, Kubernetes, GraphQL, gRPC, WebAssembly

※これらは例です。任意の技術を学習できます。

## プロジェクト構造

```
claude-lec/
├── .claude/                      # Claude Code設定
│   ├── learning-config.json     # 学習フレームワーク設定
│   └── session/                 # セッション管理（テンプレート）
│       ├── *.json.example       # JSONテンプレート
│       └── *.md.template        # Markdownテンプレート
├── templates/                    # 学習テンプレート
│   ├── project-types/           # プロジェクトタイプ別
│   ├── learning-phases/         # 学習フェーズ別ガイド
│   ├── review-prompts/          # レビュー用プロンプト
│   ├── assessment/              # 評価基準
│   ├── tech-stacks/             # 技術スタック別ガイド
│   ├── best-practices/          # ベストプラクティス
│   └── LEARNING_STATUS.md       # 進捗記録テンプレート
├── scripts/                      # ユーティリティスクリプト
│   └── init-session.sh          # セッション初期化
├── docs/                         # ドキュメント
└── CLAUDE.md                     # Claude Code用ガイダンス
```

## Claude Codeとの対話例

```
あなた: 「ReactとTypeScriptでSPAを作りたいです。経験は中級レベルです。」

Claude Code: 「素晴らしい選択です！React + TypeScriptは型安全性と
コンポーネントベース開発の利点を組み合わせた強力な組み合わせです。

中級レベルということで、以下のようなプロジェクトを提案します：

📱 タスク管理ダッシュボード
- ドラッグ&ドロップでタスクを整理
- リアルタイムデータ同期
- カスタムフックの活用
- Context APIとReducerでの状態管理

このプロジェクトを通じて、React + TypeScriptの実践的なスキルが身につきます。
始めてみましょうか？」
```

## よくある質問

**Q: 特定の技術の学習パスは用意されていますか？**
A: いいえ。このシステムは動的に学習計画を生成するため、事前定義された学習パスはありません。

**Q: 初心者でも使えますか？**
A: はい。Claude Codeがあなたのレベルに合わせて学習内容を調整します。

**Q: 複数の技術を同時に学べますか？**
A: はい。関連する技術を組み合わせた学習計画を作成できます。
