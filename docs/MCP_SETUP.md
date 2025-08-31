# MCP (Model Context Protocol) セットアップガイド

## 概要

MCPを使用することで、Claude CodeからGitHubリポジトリを直接操作できるようになります。このガイドでは、GitHub MCPサーバーのセットアップ手順を説明します。

## 前提条件

- Node.js がインストールされていること
- GitHubアカウントを持っていること
- Claude Codeがインストールされていること

## セットアップ手順

### 1. GitHub Personal Access Token の作成

1. GitHubにログインして、[Settings > Developer settings > Personal access tokens > Tokens (classic)](https://github.com/settings/tokens) にアクセス

2. 「Generate new token」をクリック

3. 以下の権限を選択：
   - `repo` (Full control of private repositories)
   - `workflow` (Update GitHub Action workflows)
   - `write:packages` (Upload packages to GitHub Package Registry)
   - `read:org` (Read org and team membership, read org projects)

4. トークンを生成し、安全な場所にコピー

### 2. 環境変数の設定

#### macOS/Linux の場合

```bash
# ~/.bashrc または ~/.zshrc に追加
export GITHUB_TOKEN="your-github-personal-access-token"
```

変更を反映：
```bash
source ~/.bashrc  # または source ~/.zshrc
```

#### Windows の場合

PowerShellを管理者として実行：
```powershell
[Environment]::SetEnvironmentVariable("GITHUB_TOKEN", "your-github-personal-access-token", "User")
```

### 3. 依存関係について

このプロジェクトは `npx` を使用してGitHub MCPサーバーを実行するため、グローバルインストールは不要です。`npx` は必要に応じて自動的にパッケージをダウンロードして実行します。

### 4. MCP設定の確認

プロジェクトディレクトリの `.mcp.json` ファイルが以下のようになっていることを確認：

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-github"
      ],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_TOKEN}"
      }
    }
  }
}
```

この設定により、プロジェクトをどこにcloneしても、`npx`が自動的にGitHub MCPサーバーを実行します。

### 5. Claude Codeでの確認

1. プロジェクトディレクトリで Claude Code を起動：
   ```bash
   cd claude-lec
   claude code .
   ```

2. MCPサーバーの状態を確認：
   ```
   /mcp
   ```

3. 「github」サーバーが表示されれば設定完了

## 使用方法

Claude Codeで以下のようなコマンドが使用できるようになります：

- リポジトリの作成
- ファイルのプッシュ
- イシューの作成
- プルリクエストの作成
- その他のGitHub操作

## トラブルシューティング

### エラー: MCPサーバーが見つからない

1. 環境変数が正しく設定されているか確認：
   ```bash
   echo $GITHUB_TOKEN
   ```

2. `npx`が正しく動作するか確認：
   ```bash
   npx -y @modelcontextprotocol/server-github --version
   ```

3. Node.jsとnpmが最新バージョンか確認：
   ```bash
   node --version
   npm --version
   ```

### エラー: 認証エラー

1. GitHub Personal Access Tokenが有効か確認
2. トークンに必要な権限が付与されているか確認
3. 環境変数 `GITHUB_TOKEN` が正しく設定されているか確認

### エラー: npxの実行に失敗

1. インターネット接続を確認（`npx`はパッケージをダウンロードする必要があります）
2. npmのキャッシュをクリア：
   ```bash
   npm cache clean --force
   ```
3. プロキシ設定が必要な場合は、npmにプロキシを設定：
   ```bash
   npm config set proxy http://proxy.example.com:8080
   npm config set https-proxy http://proxy.example.com:8080
   ```

## セキュリティに関する注意

- GitHub Personal Access Tokenは秘密情報です。決して公開リポジトリにコミットしないでください
- `.env` ファイルを使用する場合は、必ず `.gitignore` に追加してください
- トークンは定期的に更新することを推奨します

## 参考リンク

- [MCP公式ドキュメント](https://docs.anthropic.com/en/docs/claude-code/mcp)
- [GitHub Personal Access Tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [Model Context Protocol GitHub](https://github.com/anthropics/mcp)