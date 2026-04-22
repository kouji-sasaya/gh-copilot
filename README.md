# gh-rust


GitHub extension で、rust のビルド環境を構築します。

## 説明

gh resut を使って、面倒な、環境構築を簡単にして、すぐに、rust プログラミング言語の学習ができます。

## インストール / アンインストール / アップグレード

```sh
gh ext install kouji-sasaya/gh-rust
```

```sh
gh ext remove kouji-sasaya/gh-rust
```

```sh
gh ext upgrade rust
```

## セットアップ

rust プログラミングの学習環境は、docker コンテナ内で、作業できます。

setup すると、docker ビルドします。


```sh
gh rust setup
```

## GitHub Actions でビルドエラーを AI 解析する

`.github/workflows/analyze-build-errors.yml` を追加すると、GitHub Actions からビルドを実行し、失敗したときだけ GitHub Models でログを解析して結果をテキスト保存できます。

Actions タブから **Analyze build errors** を手動実行してください。

- `build_command`: 実行したいビルドコマンド。既定値は `docker compose build`
- `model`: 解析に使う GitHub Models のモデル ID。既定値は `openai/gpt-4.1`

実行後、artifact `build-error-analysis` に以下が保存されます。

- `artifacts/build.log`
- `artifacts/build-analysis.txt`

## ローカルでビルドログを AI 解析する

ビルドエラーのログファイルを入力して、要約と対処方法を標準出力に表示するだけのシンプルなコマンドです。

事前に `GITHUB_TOKEN` を設定してください。

```sh
export GITHUB_TOKEN=ghp_xxx
gh copilot ./build.log
```

## 学習

まっさらな、ディレクトリを作成し、hello worldを、rust コンパイラでビルドして、実行します。

デバッグ版のビルド方法と、リリース版のビルド方法を学びます。

フォーマッターを使って、rust コードを成形できます。

### docker コンテナに入る

```sh
mkdir my-rust && cd my-rust
gh rust shell
```

### Building

hello world作成

```sh
cargo init
```

ビルド（デバッグ版）

```sh
cargo build
```

ビルド（リリース版）

```sh
cargo build --release
```

チェック

```sh
cargo check
```

実行

```sh
cargo run
```

実行（非表示）

```sh
cargo run
```

ソースコードの成形

```sh
cargo fmt
```

# ライセンス

MIT License

Copyright (c) Kouji Sasaya

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
