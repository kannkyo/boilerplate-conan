# boilerplate-conan

Conan を使用して、cunit テストを実行しますプロジェクト用のサンプルです。

## 環境構築

### 前提条件

1. `python = "^3.8"` をインストール済みであること。
2. `cmake >= 3.1` をインストール済みであること。
3. VSCode をインストール済みであること。

### 構築

#### conan インストール

以下のコマンドを実行して、conan 等をインストールします。

```bash
poetry install
```

#### VSCode

VSCode で本フォルダを開いて、拡張機能タブを開き、`@recommended` を入力して表示された推奨拡張機能を全てインストールします。

![vscode](README.assets/vscode.png)

## 使い方

### クリーン

ビルドで生成した中間ファイルは以下のコマンドで削除します。

```bash
./bin/clean.sh
```

コマンド実行方法の詳細は、[getting-start](docs/getting-start.md) 参照。

### ビルド

以下のコマンドを実行します。

**デバッグモード**

```bash
./bin/build.sh -t Debug
```

**リリースモード**

```bash
./bin/build.sh -t Debug
```

ビルドは、デバッグモードとリリースモードで使用するコンパイラが異なります。

各モードのコンパイラは[src/CMakeLists.txt](src/CMakeLists.txt)で定義しています。

```java
foreach(_LIB ${CONAN_LIBS_DEBUG})
  set(CMAKE_C_COMPILER afl-gcc)
  set(CMAKE_CXX_COMPILER afl-g++)
endforeach()

foreach(_LIB ${CONAN_LIBS_RELEASE})
  set(CMAKE_C_COMPILER gcc)
  set(CMAKE_CXX_COMPILER g++)
endforeach()

```

コマンド実行時に自動的にビルドに必要なパッケージをインターネット上からダウンロードします。

コマンド実行方法の詳細は、[getting-start](docs/getting-start.md) を参照してください。

### テスト

以下のコマンドを実行します。

```bash
./bin/test.sh
```

コマンド実行時に自動的にテストに必要なパッケージをインターネット上からダウンロードします。

コマンド実行方法の詳細は、[getting-start](docs/getting-start.md) を参照してください。

## メンテナンス

### パッケージ追加

#### ソースコード用

[conanfile.py](conanfile.py) の `requires` 変数にカンマ区切りで新しいパッケージを追加します。

```python
requires = "poco/1.9.4" , "hoge/1.2.3"
```

#### テストコード用

[test/conanfile.py](test/conanfile.py) の `requires` 変数にカンマ区切りで新しいパッケージを追加します。

```python
requires = "cunit/2.1.3", "hoge/1.2.3"
```

### バージョン更新

[conanfile.py](conanfile.py) の `version` 変数を更新します。

```python
version = "0.1.0"
```

[pyproject.toml](pyproject.toml) の `version` 変数を更新します。

```toml
version = "0.1.0"
```
