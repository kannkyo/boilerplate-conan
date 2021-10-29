# boilerplate-conan

Conan を使用して、cunit テストを実谷するプロジェクト用のサンプルである。

## 環境構築

### 前提条件

1. `python = "^3.8"` をインストール済みであること。
2. `cmake >= 3.1` をインストール済みであること。
3. VSCode をインストール済みであること。

### 構築

#### conan インストール

以下のコマンドを実行して、conan 等をインストールする。

```bash
poetry install
```

#### VSCode

VSCode で本フォルダを開いて、拡張機能タブを開き、`@recommended`を入力して表示された推奨拡張機能を全てインストールする。

![vscode](README.assets/vscode.png)



## 使い方

### クリーン

ビルドで生成した中間ファイルは以下のコマンドで削除する。

```bash
./bin/clean.sh
```

コマンド実行方法の詳細は、[getting-start](docs/getting-start.md) 参照。

### ビルド

以下のコマンドを実行する。

```bash
./bin/build.sh
```

コマンド実行時に自動的にビルドに必要なパッケージをインターネット上からダウンロードします。

コマンド実行方法の詳細は、[getting-start](docs/getting-start.md) 参照。

### テスト

以下のコマンドを実行する。

```bash
./bin/test.sh
```

コマンド実行時に自動的にテストに必要なパッケージをインターネット上からダウンロードします。

コマンド実行方法の詳細は、[getting-start](docs/getting-start.md) 参照。

## メンテナンス

### パッケージ追加

#### ソースコード用

[conanfile.py](conanfile.py) の `requires` 変数にカンマ区切りで新しいパッケージを追加する。

```python
requires = "poco/1.9.4" , "hoge/1.2.3"
```

#### テストコード用

[test/conanfile.py](test/conanfile.py) の `requires` 変数にカンマ区切りで新しいパッケージを追加する。

```python
requires = "cunit/2.1.3", "hoge/1.2.3"
```

### バージョン更新

[conanfile.py](conanfile.py) の `version` 変数を更新する。

```python
version = "0.1.0"
```

[pyproject.toml](pyproject.toml) の `version` 変数を更新する。

```toml
version = "0.1.0"
```
