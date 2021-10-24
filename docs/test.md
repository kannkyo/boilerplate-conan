# テスト方法

以下のコマンドを実行すると自動的にテストが実行されます。

```bash
$ ./bin/test.sh # ・・・①
...
boilerplate-conan/0.1.0@user/testing (test package): Installing package 
Requirements
    boilerplate-conan/0.1.0@user/testing from local cache - Cache # ・・・②
    bzip2/1.0.8 from 'conancenter' - Cache
    cunit/2.1.3 from 'conancenter' - Cache  # ・・・⑤
    expat/2.4.1 from 'conancenter' - Cache
    openssl/1.1.1k from 'conancenter' - Cache
    pcre/8.45 from 'conancenter' - Cache
    poco/1.9.4 from 'conancenter' - Cache # ・・・③
    sqlite3/3.36.0 from 'conancenter' - Cache
    zlib/1.2.11 from 'conancenter' - Cache # ・・・④
...
-- Build files have been written to: /mnt/home/kannkyo/git/github/kannkyo/boilerplate-conan/test/build/7e3f3c9f8b0319ca5c01315759aeda2f877da74f
Scanning dependencies of target example
[ 50%] Building CXX object CMakeFiles/example.dir/example.cpp.o
[100%] Linking CXX executable bin/example
[100%] Built target example # ・・・⑥
boilerplate-conan/0.1.0@user/testing (test package): Running test() # ・・・⑦
sample/0.2: Hello World Release!
c3fcd3d76192e4007dfb496cca67e13b


     CUnit - A unit testing framework for C - Version 2.1-3
     http://cunit.sourceforge.net/


Suite: Suite_1
  Test: test of test_md5echo() ...passed
  Test: test of test_sample() ...passed

Run Summary:    Type  Total    Ran Passed Failed Inactive
              suites      1      1    n/a      0        0
               tests      2      2      2      0        0
             asserts      2      2      2      0      n/a # ・・・⑧

Elapsed time =    0.000 seconds
+ popd
/mnt/home/kannkyo/git/github/kannkyo/boilerplate-conan
```

上記のコマンドの流れは以下のとおり。

1. テスト用のスクリプトを実行します。
2. 依存するパッケージを自動的にインストールするコマンドが実行されます。
3. ソースコードが直接的に依存するパッケージ(poco のバージョン 1.9.4)を自動的にインストールします。
4. ソースコードが間接的に依存するパッケージ(poco が依存する zlib のバージョン 1.2.11)を自動的にインストールします。
5. テストコードが依存するパッケージ(cunit のバージョン 2.1.3)を自動的にインストールします。
6. ビルドを自動的に実行します。
7. ビルドが成功した場合に、cunit テストが自動的に時刻されます。
8. cunit テスト結果が自動的に表示されます。
