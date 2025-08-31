# 貢献ガイド

Claude Learning Experience (Claude-LEC)への貢献を歓迎します！

## 新しい学習パスの追加

### 1. ディレクトリ構造

新しい学習パスを追加する場合、以下の構造に従ってください：

```
learning-paths/
└── your-tech-stack/
    ├── README.md           # 学習パスの概要
    ├── phase1-*.md        # フェーズ1のドキュメント
    ├── phase2-*.md        # フェーズ2のドキュメント
    ├── ...
    ├── tests/             # テストファイル
    └── solutions/         # 解答例（オプション）
```

### 2. 必須コンテンツ

#### README.md

以下の項目を含めてください：

- 学習目標
- 前提知識
- プロジェクトの概要
- 機能一覧
- 学習フェーズの概要
- 推定学習時間

#### 各フェーズのドキュメント

- 明確な学習目標
- ステップバイステップの指示
- コード例
- 確認事項のチェックリスト
- トラブルシューティング

### 3. learning-config.jsonの更新

`.claude/learning-config.json`に新しい学習パスを追加：

```json
{
  "learning_paths": {
    "your-tech-stack": {
      "name": "Your Tech Stack Name",
      "description": "簡潔な説明",
      "difficulty": "beginner|intermediate|advanced",
      "estimated_hours": 20,
      "prerequisites": ["必要な前提知識"],
      "technologies": ["使用する技術"]
    }
  }
}
```

## テンプレートの追加

### レビュープロンプト

`templates/review-prompts/`に新しいレビュープロンプトを追加する場合：

1. 技術固有のレビュー観点を含める
2. 具体的な例を提供
3. 学習段階に応じた差別化

### テストテンプレート

`templates/test-templates/`に新しいテストテンプレートを追加する場合：

1. セットアップ手順を含める
2. 基本的なテストケースの例
3. モックの使用例
4. 統合テストの例

## コーディング規約

### TypeScript/JavaScript

- ESLintの設定に従う
- 型定義を明示的に記述
- 意味のある変数名を使用

### Markdown

- 見出しは階層的に使用
- コードブロックには言語を指定
- 日本語と英語の間にスペースを入れる

## プルリクエストのガイドライン

1. **ブランチ名**: `feature/add-[tech-stack]-path`
2. **コミットメッセージ**: 
   - `feat: Add [tech stack] learning path`
   - `docs: Update contributing guide`
   - `fix: Correct typo in phase1 document`

3. **PR の説明**:
   - 追加/変更内容の概要
   - テスト方法
   - 関連する Issue 番号

## テスト

新しい学習パスを追加した場合：

1. すべてのコード例が動作することを確認
2. リンクが正しいことを確認
3. 前提知識で実際に実装可能か検証

## レビュープロセス

1. 技術的な正確性の確認
2. 教育的価値の評価
3. ドキュメントの明確性
4. コード品質

## 質問とサポート

- Issue を作成して質問
- ディスカッションでアイデアを共有
- 既存の学習パスを参考に

## ライセンス

貢献されたコンテンツは MIT ライセンスの下で公開されます。