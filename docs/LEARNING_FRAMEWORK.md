# 動的学習フレームワーク

## 概要

Claude Learning Experience (Claude-LEC)は、技術に依存しない動的な学習フレームワークです。エンジニアが学びたい技術をClaude Codeがヒアリングし、その場で最適な学習計画を生成します。

## フレームワークの構成要素

### 1. Discovery Phase（発見フェーズ）

初回の対話で以下を収集：

```yaml
learner_profile:
  technologies: []      # 学習したい技術のリスト
  experience_level: ""  # beginner | intermediate | advanced | expert
  project_type: ""      # web_app | api | mobile | cli | library | etc
  time_commitment: ""   # weekend | part_time | full_time
  learning_goals: []    # 具体的な学習目標
  constraints: []       # 時間、環境、その他の制約
```

### 2. Dynamic Planning（動的計画）

収集した情報から学習計画を生成：

```yaml
learning_plan:
  project:
    name: ""          # プロジェクト名
    description: ""   # プロジェクトの説明
    features: []      # 実装する機能リスト
    
  phases:
    - name: "Foundation"
      duration: ""    # 推定時間
      objectives: []  # 学習目標
      deliverables: [] # 成果物
      
    - name: "Core Features"
      duration: ""
      objectives: []
      deliverables: []
      
    - name: "Advanced Features"
      duration: ""
      objectives: []
      deliverables: []
      
    - name: "Polish"
      duration: ""
      objectives: []
      deliverables: []
```

### 3. Adaptive Guidance（適応的ガイダンス）

エンジニアの進捗に応じて動的に調整：

- **ペース調整**: 理解度に応じて説明の詳細度を変更
- **難易度調整**: つまずきがあれば簡単な課題に変更
- **興味の追従**: エンジニアの興味に応じて機能を追加/変更

## プロジェクトタイプ別の特徴

### Web Application
- フロントエンド/バックエンドの分離または統合
- 認証、データ管理、UI/UXの考慮
- レスポンシブデザイン

### API Server
- RESTful設計原則
- 認証・認可
- データベース設計
- API ドキュメント

### Mobile Application
- プラットフォーム選択（iOS/Android/Cross-platform）
- ネイティブ機能の活用
- オフライン対応

### CLI Tool
- コマンドライン引数の設計
- 設定ファイル管理
- エラーハンドリング

### Library/Package
- API設計
- ドキュメント重視
- テストカバレッジ
- 配布方法

## 学習進捗の評価基準

### 技術的スキル
1. **基礎理解**: 選択した技術の基本概念を理解
2. **実装能力**: 機能を自力で実装できる
3. **問題解決**: エラーを自力で解決できる
4. **最適化**: より良い実装方法を見つけられる

### ソフトスキル
1. **設計思考**: 適切な設計判断ができる
2. **デバッグ能力**: 系統的にデバッグできる
3. **ドキュメント作成**: 明確なドキュメントを書ける
4. **ベストプラクティス**: 業界標準に従える

## 動的カスタマイズの例

### 例1: React + TypeScript 初心者

```yaml
generated_project:
  name: "タスク管理アプリ"
  complexity: "simple"
  features:
    - "タスクの追加/削除"
    - "タスクの完了状態管理"
    - "ローカルストレージ保存"
    - "基本的なスタイリング"
```

### 例2: Go + gRPC 上級者

```yaml
generated_project:
  name: "マイクロサービス基盤"
  complexity: "advanced"
  features:
    - "サービス間通信"
    - "分散トレーシング"
    - "サーキットブレーカー"
    - "Kubernetes デプロイメント"
```

## フィードバックループ

各フェーズ終了時に：

1. **自己評価**: エンジニアに理解度を確認
2. **コードレビュー**: 実装内容をレビュー
3. **改善提案**: 次のステップへの提案
4. **計画調整**: 必要に応じて計画を修正

## 成功指標

学習が成功したと判断する基準：

1. **完成度**: プロジェクトが動作する
2. **理解度**: 主要概念を説明できる
3. **自立性**: 新しい機能を自力で追加できる
4. **品質**: ベストプラクティスに従っている

## 拡張性

このフレームワークは以下の点で拡張可能：

- 新しいプロジェクトタイプの追加
- 評価基準のカスタマイズ
- 業界別の特殊要件への対応
- 複数技術の組み合わせ学習