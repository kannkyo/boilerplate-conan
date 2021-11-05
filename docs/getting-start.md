# コマンドの使い方

## ./bin/test.sh

テストコマンドは以下のように使います。

```bash
$ ./bin/test.sh 
+ . ./bin/env.ini
++ set -e
++ set -x
++ USER_CHANNEL=user/testing
+++ cat conanfile.py
+++ grep -e version
+++ sed 's/ //g'
+++ sed 's/"//g'
+++ sed s/version=//g
++ PACKAGE_VERSION=0.1.0
+++ grep -e name
+++ sed 's/ //g'
+++ sed s/name=//g
+++ sed 's/"//g'
+++ cat conanfile.py
++ PACKAGE_NAME=boilerplate-conan
+ mkdir -p test
+ pushd test
./boilerplate-conan/test ./boilerplate-conan
+ conan test . boilerplate-conan/0.1.0@user/testing
Configuration:
[settings]
arch=x86_64
arch_build=x86_64
build_type=Release
compiler=gcc
compiler.libcxx=libstdc++
compiler.version=9
os=Linux
os_build=Linux
[options]
[build_requires]
[env]

boilerplate-conan/0.1.0@user/testing (test package): Installing package
Requirements
    boilerplate-conan/0.1.0@user/testing from local cache - Cache
    bzip2/1.0.8 from 'conancenter' - Cache
    cunit/2.1.3 from 'conancenter' - Cache
    expat/2.4.1 from 'conancenter' - Cache
    openssl/1.1.1k from 'conancenter' - Cache
    pcre/8.45 from 'conancenter' - Cache
    poco/1.9.4 from 'conancenter' - Cache
    sqlite3/3.36.0 from 'conancenter' - Cache
    zlib/1.2.11 from 'conancenter' - Cache
Packages
    boilerplate-conan/0.1.0@user/testing:f6edb6b7c9d43577d91bb67d1c096d7ef852947e - Cache
    bzip2/1.0.8:da606cf731e334010b0bf6e85a2a6f891b9f36b0 - Cache
    cunit/2.1.3:61ffa8b3f2bd70ee6bb1c458fa09615b0c3c1896 - Cache
    expat/2.4.1:c215f67ac7fc6a34d9d0fb90b0450016be569d86 - Cache
    openssl/1.1.1k:6af9cc7cb931c5ad942174fd7838eb655717c709 - Cache
    pcre/8.45:87087120c448298530c012e627c1a0b8f062586d - Cache
    poco/1.9.4:b82a00d81a86b06045a9d9b8b1b627c8f353a65e - Cache
    sqlite3/3.36.0:c0cc1a2703aaeb2777d683089def26db57cf15e6 - Cache
    zlib/1.2.11:6af9cc7cb931c5ad942174fd7838eb655717c709 - Cache

Installing (downloading, building) binaries...
bzip2/1.0.8: Already installed!
bzip2/1.0.8: Appending PATH environment variable: ~/.conan/data/bzip2/1.0.8/_/_/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/bin
cunit/2.1.3: Already installed!
expat/2.4.1: Already installed!
openssl/1.1.1k: Already installed!
sqlite3/3.36.0: Already installed!
sqlite3/3.36.0: Appending PATH env var with : ~/.conan/data/sqlite3/3.36.0/_/_/package/c0cc1a2703aaeb2777d683089def26db57cf15e6/bin
zlib/1.2.11: Already installed!
pcre/8.45: Already installed!
pcre/8.45: Appending PATH environment variable: ~/.conan/data/pcre/8.45/_/_/package/87087120c448298530c012e627c1a0b8f062586d/bin
poco/1.9.4: Already installed!
boilerplate-conan/0.1.0@user/testing: Already installed!
boilerplate-conan/0.1.0@user/testing (test package): Generator txt created conanbuildinfo.txt
boilerplate-conan/0.1.0@user/testing (test package): Generator cmake created conanbuildinfo.cmake
boilerplate-conan/0.1.0@user/testing (test package): Aggregating env generators
boilerplate-conan/0.1.0@user/testing (test package): Generated conaninfo.txt
boilerplate-conan/0.1.0@user/testing (test package): Generated graphinfo
Using lockfile: './boilerplate-conan/test/build/7e3f3c9f8b0319ca5c01315759aeda2f877da74f/conan.lock'
Using cached profile from lockfile
boilerplate-conan/0.1.0@user/testing (test package): Calling build()
-- The CXX compiler identification is GNU 9.3.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Conan: called by CMake conan helper
-- Conan: Adjusting output directories
-- Conan: Using cmake global configuration
-- Conan: Adjusting default RPATHs Conan policies
-- Conan: Adjusting language standard
-- Conan: Compiler GCC>=5, checking major version 9
-- Conan: Checking correct version: 9
-- Conan: C++ stdlib: libstdc++
-- Configuring done
-- Generating done
CMake Warning:
  Manually-specified variables were not used by the project:

    CMAKE_EXPORT_NO_PACKAGE_REGISTRY
    CMAKE_INSTALL_BINDIR
    CMAKE_INSTALL_DATAROOTDIR
    CMAKE_INSTALL_INCLUDEDIR
    CMAKE_INSTALL_LIBDIR
    CMAKE_INSTALL_LIBEXECDIR
    CMAKE_INSTALL_OLDINCLUDEDIR
    CMAKE_INSTALL_SBINDIR


-- Build files have been written to: ./boilerplate-conan/test/build/7e3f3c9f8b0319ca5c01315759aeda2f877da74f
Scanning dependencies of target example
[ 50%] Building CXX object CMakeFiles/example.dir/example.cpp.o
[100%] Linking CXX executable bin/example
[100%] Built target example
boilerplate-conan/0.1.0@user/testing (test package): Running test()
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
             asserts      2      2      2      0      n/a

Elapsed time =    0.000 seconds
+ popd
./boilerplate-conan
```

## ./bin/package.sh

パッケージ生成コマンドは以下のように使います。

```bash
$ ./bin/package.sh 
+ . ./bin/env.ini
++ set -e
++ set -x
++ USER_CHANNEL=user/testing
+++ grep -e version
+++ sed 's/ //g'
+++ sed s/version=//g
+++ sed 's/"//g'
+++ cat conanfile.py
++ PACKAGE_VERSION=0.1.0
+++ cat conanfile.py
+++ sed 's/ //g'
+++ grep -e name
+++ sed 's/"//g'
+++ sed s/name=//g
++ PACKAGE_NAME=boilerplate-conan
+ mkdir -p build
+ pushd build
./boilerplate-conan/build ./boilerplate-conan
+ conan install .. --build=missing --generator cmake_multi --settings build_type=Release
Configuration:
[settings]
arch=x86_64
arch_build=x86_64
build_type=Release
compiler=gcc
compiler.libcxx=libstdc++
compiler.version=9
os=Linux
os_build=Linux
[options]
[build_requires]
[env]

conanfile.py (boilerplate-conan/0.1.0): Installing package
Requirements
    bzip2/1.0.8 from 'conancenter' - Cache
    expat/2.4.1 from 'conancenter' - Cache
    openssl/1.1.1k from 'conancenter' - Cache
    pcre/8.45 from 'conancenter' - Cache
    poco/1.9.4 from 'conancenter' - Cache
    sqlite3/3.36.0 from 'conancenter' - Cache
    zlib/1.2.11 from 'conancenter' - Cache
Packages
    bzip2/1.0.8:da606cf731e334010b0bf6e85a2a6f891b9f36b0 - Cache
    expat/2.4.1:c215f67ac7fc6a34d9d0fb90b0450016be569d86 - Cache
    openssl/1.1.1k:6af9cc7cb931c5ad942174fd7838eb655717c709 - Cache
    pcre/8.45:87087120c448298530c012e627c1a0b8f062586d - Cache
    poco/1.9.4:b82a00d81a86b06045a9d9b8b1b627c8f353a65e - Cache
    sqlite3/3.36.0:c0cc1a2703aaeb2777d683089def26db57cf15e6 - Cache
    zlib/1.2.11:6af9cc7cb931c5ad942174fd7838eb655717c709 - Cache

Installing (downloading, building) binaries...
bzip2/1.0.8: Already installed!
bzip2/1.0.8: Appending PATH environment variable: ~/.conan/data/bzip2/1.0.8/_/_/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/bin
expat/2.4.1: Already installed!
openssl/1.1.1k: Already installed!
sqlite3/3.36.0: Already installed!
sqlite3/3.36.0: Appending PATH env var with : ~/.conan/data/sqlite3/3.36.0/_/_/package/c0cc1a2703aaeb2777d683089def26db57cf15e6/bin
zlib/1.2.11: Already installed!
pcre/8.45: Already installed!
pcre/8.45: Appending PATH environment variable: ~/.conan/data/pcre/8.45/_/_/package/87087120c448298530c012e627c1a0b8f062586d/bin
poco/1.9.4: Already installed!
conanfile.py (boilerplate-conan/0.1.0): Generator txt created conanbuildinfo.txt
conanfile.py (boilerplate-conan/0.1.0): Generator cmake_multi created conanbuildinfo_release.cmake
conanfile.py (boilerplate-conan/0.1.0): Generator cmake_multi created conanbuildinfo_multi.cmake
conanfile.py (boilerplate-conan/0.1.0): Generator cmake created conanbuildinfo.cmake
conanfile.py (boilerplate-conan/0.1.0): Aggregating env generators
conanfile.py (boilerplate-conan/0.1.0): Generated conaninfo.txt
conanfile.py (boilerplate-conan/0.1.0): Generated graphinfo
+ conan create .. user/testing
Exporting package recipe
boilerplate-conan/0.1.0@user/testing exports_sources: Copied 3 '.cpp' files: main.cpp, md5.cpp, sample.cpp
boilerplate-conan/0.1.0@user/testing exports_sources: Copied 1 '.txt' file: CMakeLists.txt
boilerplate-conan/0.1.0@user/testing exports_sources: Copied 2 '.h' files: sample.h, md5.h
boilerplate-conan/0.1.0@user/testing: The stored package has not changed
boilerplate-conan/0.1.0@user/testing: Exported revision: d28290f5d0c961b238813e14fdfa28a2
Configuration:
[settings]
arch=x86_64
arch_build=x86_64
build_type=Release
compiler=gcc
compiler.libcxx=libstdc++
compiler.version=9
os=Linux
os_build=Linux
[options]
[build_requires]
[env]

boilerplate-conan/0.1.0@user/testing: Forced build from source
boilerplate-conan/0.1.0@user/testing (test package): Installing package
Requirements
    boilerplate-conan/0.1.0@user/testing from local cache - Cache
    bzip2/1.0.8 from 'conancenter' - Cache
    cunit/2.1.3 from 'conancenter' - Cache
    expat/2.4.1 from 'conancenter' - Cache
    openssl/1.1.1k from 'conancenter' - Cache
    pcre/8.45 from 'conancenter' - Cache
    poco/1.9.4 from 'conancenter' - Cache
    sqlite3/3.36.0 from 'conancenter' - Cache
    zlib/1.2.11 from 'conancenter' - Cache
Packages
    boilerplate-conan/0.1.0@user/testing:f6edb6b7c9d43577d91bb67d1c096d7ef852947e - Build
    bzip2/1.0.8:da606cf731e334010b0bf6e85a2a6f891b9f36b0 - Cache
    cunit/2.1.3:61ffa8b3f2bd70ee6bb1c458fa09615b0c3c1896 - Cache
    expat/2.4.1:c215f67ac7fc6a34d9d0fb90b0450016be569d86 - Cache
    openssl/1.1.1k:6af9cc7cb931c5ad942174fd7838eb655717c709 - Cache
    pcre/8.45:87087120c448298530c012e627c1a0b8f062586d - Cache
    poco/1.9.4:b82a00d81a86b06045a9d9b8b1b627c8f353a65e - Cache
    sqlite3/3.36.0:c0cc1a2703aaeb2777d683089def26db57cf15e6 - Cache
    zlib/1.2.11:6af9cc7cb931c5ad942174fd7838eb655717c709 - Cache

Installing (downloading, building) binaries...
bzip2/1.0.8: Already installed!
bzip2/1.0.8: Appending PATH environment variable: ~/.conan/data/bzip2/1.0.8/_/_/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/bin
cunit/2.1.3: Already installed!
expat/2.4.1: Already installed!
openssl/1.1.1k: Already installed!
sqlite3/3.36.0: Already installed!
sqlite3/3.36.0: Appending PATH env var with : ~/.conan/data/sqlite3/3.36.0/_/_/package/c0cc1a2703aaeb2777d683089def26db57cf15e6/bin
zlib/1.2.11: Already installed!
pcre/8.45: Already installed!
pcre/8.45: Appending PATH environment variable: ~/.conan/data/pcre/8.45/_/_/package/87087120c448298530c012e627c1a0b8f062586d/bin
poco/1.9.4: Already installed!
boilerplate-conan/0.1.0@user/testing: Copying sources to build folder
boilerplate-conan/0.1.0@user/testing: Building your package in ~/.conan/data/boilerplate-conan/0.1.0/user/testing/build/f6edb6b7c9d43577d91bb67d1c096d7ef852947e
boilerplate-conan/0.1.0@user/testing: Generator cmake created conanbuildinfo.cmake
boilerplate-conan/0.1.0@user/testing: Aggregating env generators
boilerplate-conan/0.1.0@user/testing: Calling build()
-- The CXX compiler identification is GNU 9.3.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Conan: called by CMake conan helper
-- Conan: called inside local cache
-- Conan: Adjusting output directories
-- Conan: Using cmake global configuration
-- Conan: Adjusting default RPATHs Conan policies
-- Conan: Adjusting language standard
-- Conan: Adjusting fPIC flag (ON)
-- Conan: Compiler GCC>=5, checking major version 9
-- Conan: Checking correct version: 9
-- Conan: C++ stdlib: libstdc++
-- Configuring done
-- Generating done
CMake Warning:
  Manually-specified variables were not used by the project:

    CMAKE_EXPORT_NO_PACKAGE_REGISTRY
    CMAKE_INSTALL_BINDIR
    CMAKE_INSTALL_DATAROOTDIR
    CMAKE_INSTALL_INCLUDEDIR
    CMAKE_INSTALL_LIBDIR
    CMAKE_INSTALL_LIBEXECDIR
    CMAKE_INSTALL_OLDINCLUDEDIR
    CMAKE_INSTALL_SBINDIR


-- Build files have been written to: ~/.conan/data/boilerplate-conan/0.1.0/user/testing/build/f6edb6b7c9d43577d91bb67d1c096d7ef852947e
Scanning dependencies of target md5
Scanning dependencies of target sample
[ 25%] Building CXX object CMakeFiles/md5.dir/md5.cpp.o
[ 50%] Building CXX object CMakeFiles/sample.dir/sample.cpp.o
[ 75%] Linking CXX static library lib/libsample.a
[100%] Linking CXX static library lib/libmd5.a
[100%] Built target sample
[100%] Built target md5
boilerplate-conan/0.1.0@user/testing: Package 'f6edb6b7c9d43577d91bb67d1c096d7ef852947e' built
boilerplate-conan/0.1.0@user/testing: Build folder ~/.conan/data/boilerplate-conan/0.1.0/user/testing/build/f6edb6b7c9d43577d91bb67d1c096d7ef852947e
boilerplate-conan/0.1.0@user/testing: Generated conaninfo.txt
boilerplate-conan/0.1.0@user/testing: Generated conanbuildinfo.txt
boilerplate-conan/0.1.0@user/testing: Generating the package
boilerplate-conan/0.1.0@user/testing: Package folder ~/.conan/data/boilerplate-conan/0.1.0/user/testing/package/f6edb6b7c9d43577d91bb67d1c096d7ef852947e
boilerplate-conan/0.1.0@user/testing: Calling package()
boilerplate-conan/0.1.0@user/testing package(): Packaged 2 '.a' files: libsample.a, libmd5.a
boilerplate-conan/0.1.0@user/testing package(): Packaged 2 '.h' files: md5.h, sample.h
boilerplate-conan/0.1.0@user/testing: Package 'f6edb6b7c9d43577d91bb67d1c096d7ef852947e' created
boilerplate-conan/0.1.0@user/testing: Created package revision 5d4a832af8154b5783021f38e2598b6d
boilerplate-conan/0.1.0@user/testing (test package): Generator txt created conanbuildinfo.txt
boilerplate-conan/0.1.0@user/testing (test package): Generator cmake created conanbuildinfo.cmake
boilerplate-conan/0.1.0@user/testing (test package): Aggregating env generators
boilerplate-conan/0.1.0@user/testing (test package): Generated conaninfo.txt
boilerplate-conan/0.1.0@user/testing (test package): Generated graphinfo
Using lockfile: './boilerplate-conan/test/build/7e3f3c9f8b0319ca5c01315759aeda2f877da74f/conan.lock'
Using cached profile from lockfile
boilerplate-conan/0.1.0@user/testing (test package): Calling build()
-- The CXX compiler identification is GNU 9.3.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Conan: called by CMake conan helper
-- Conan: Adjusting output directories
-- Conan: Using cmake global configuration
-- Conan: Adjusting default RPATHs Conan policies
-- Conan: Adjusting language standard
-- Conan: Compiler GCC>=5, checking major version 9
-- Conan: Checking correct version: 9
-- Conan: C++ stdlib: libstdc++
-- Configuring done
-- Generating done
CMake Warning:
  Manually-specified variables were not used by the project:

    CMAKE_EXPORT_NO_PACKAGE_REGISTRY
    CMAKE_INSTALL_BINDIR
    CMAKE_INSTALL_DATAROOTDIR
    CMAKE_INSTALL_INCLUDEDIR
    CMAKE_INSTALL_LIBDIR
    CMAKE_INSTALL_LIBEXECDIR
    CMAKE_INSTALL_OLDINCLUDEDIR
    CMAKE_INSTALL_SBINDIR


-- Build files have been written to: ./boilerplate-conan/test/build/7e3f3c9f8b0319ca5c01315759aeda2f877da74f
Scanning dependencies of target example
[ 50%] Building CXX object CMakeFiles/example.dir/example.cpp.o
[100%] Linking CXX executable bin/example
[100%] Built target example
boilerplate-conan/0.1.0@user/testing (test package): Running test()
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
             asserts      2      2      2      0      n/a

Elapsed time =    0.000 seconds
+ popd
./boilerplate-conan
```

## ./bin/build.sh

ビルドコマンドは以下のように使います。

```bash
$ ./bin/build.sh -t Debug
+ mkdir -p build
+ pushd build
./boilerplate-conan/build ./boilerplate-conan
+ conan install .. --build=missing --generator cmake_multi --settings build_type=Debug
Configuration:
[settings]
arch=x86_64
arch_build=x86_64
build_type=Debug
compiler=gcc
compiler.libcxx=libstdc++
compiler.version=9
os=Linux
os_build=Linux
[options]
[build_requires]
[env]

conanfile.py (boilerplate-conan/0.1.0): Installing package
Requirements
    bzip2/1.0.8 from 'conancenter' - Cache
    expat/2.4.1 from 'conancenter' - Cache
    openssl/1.1.1k from 'conancenter' - Cache
    pcre/8.45 from 'conancenter' - Cache
    poco/1.9.4 from 'conancenter' - Cache
    sqlite3/3.36.0 from 'conancenter' - Cache
    zlib/1.2.11 from 'conancenter' - Cache
Packages
    bzip2/1.0.8:1d984b241c5c01f748cafe0b37dc9567ed236fef - Cache
    expat/2.4.1:224956cd189fb14f9771be519f4fd0815adc0e17 - Cache
    openssl/1.1.1k:23b828d52c0630e6b0b96d2945419feb7843c4f8 - Cache
    pcre/8.45:25c45d0ee1909d2d499509931e4d76ad043ea44f - Cache
    poco/1.9.4:19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3 - Cache
    sqlite3/3.36.0:305e8b0d0ecb25e2a2f8cc5b94cb273d8478ca1e - Cache
    zlib/1.2.11:23b828d52c0630e6b0b96d2945419feb7843c4f8 - Cache

Installing (downloading, building) binaries...
bzip2/1.0.8: Already installed!
bzip2/1.0.8: Appending PATH environment variable: ~/.conan/data/bzip2/1.0.8/_/_/package/1d984b241c5c01f748cafe0b37dc9567ed236fef/bin
expat/2.4.1: Already installed!
openssl/1.1.1k: Already installed!
sqlite3/3.36.0: Already installed!
sqlite3/3.36.0: Appending PATH env var with : ~/.conan/data/sqlite3/3.36.0/_/_/package/305e8b0d0ecb25e2a2f8cc5b94cb273d8478ca1e/bin
zlib/1.2.11: Already installed!
pcre/8.45: Already installed!
pcre/8.45: Appending PATH environment variable: ~/.conan/data/pcre/8.45/_/_/package/25c45d0ee1909d2d499509931e4d76ad043ea44f/bin
poco/1.9.4: Already installed!
conanfile.py (boilerplate-conan/0.1.0): Generator cmake_multi created conanbuildinfo_debug.cmake
conanfile.py (boilerplate-conan/0.1.0): Generator cmake_multi created conanbuildinfo_multi.cmake
conanfile.py (boilerplate-conan/0.1.0): Generator cmake created conanbuildinfo.cmake
conanfile.py (boilerplate-conan/0.1.0): Generator txt created conanbuildinfo.txt
conanfile.py (boilerplate-conan/0.1.0): Aggregating env generators
conanfile.py (boilerplate-conan/0.1.0): Generated conaninfo.txt
conanfile.py (boilerplate-conan/0.1.0): Generated graphinfo
+ conan build ..
Using lockfile: './boilerplate-conan/build/conan.lock'
Using cached profile from lockfile
conanfile.py (boilerplate-conan/0.1.0): Calling build()
-- The CXX compiler identification is GNU 9.3.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Conan: called by CMake conan helper
-- Conan: Using cmake global configuration
-- Library PocoZipd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoZipd.a
-- Library PocoNetSSLd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoNetSSLd.a
-- Library PocoMongoDBd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoMongoDBd.a
-- Library PocoUtild found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoUtild.a
-- Library PocoDataSQLited found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoDataSQLited.a
-- Library PocoRedisd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoRedisd.a
-- Library PocoEncodingsd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoEncodingsd.a
-- Library PocoXMLd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoXMLd.a
-- Library PocoJSONd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoJSONd.a
-- Library PocoDatad found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoDatad.a
-- Library PocoCryptod found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoCryptod.a
-- Library PocoNetd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoNetd.a
-- Library PocoFoundationd found ~/.conan/data/poco/1.9.4/_/_/package/19b2e5ddfcb2aa78f78b7be81b45b3871b742bb3/lib/libPocoFoundationd.a
-- Library pcreposix found ~/.conan/data/pcre/8.45/_/_/package/25c45d0ee1909d2d499509931e4d76ad043ea44f/lib/libpcreposix.a
-- Library pcre found ~/.conan/data/pcre/8.45/_/_/package/25c45d0ee1909d2d499509931e4d76ad043ea44f/lib/libpcre.a
-- Library pcre16 found ~/.conan/data/pcre/8.45/_/_/package/25c45d0ee1909d2d499509931e4d76ad043ea44f/lib/libpcre16.a
-- Library pcre32 found ~/.conan/data/pcre/8.45/_/_/package/25c45d0ee1909d2d499509931e4d76ad043ea44f/lib/libpcre32.a
-- Library expat found ~/.conan/data/expat/2.4.1/_/_/package/224956cd189fb14f9771be519f4fd0815adc0e17/lib/libexpat.a
-- Library sqlite3 found ~/.conan/data/sqlite3/3.36.0/_/_/package/305e8b0d0ecb25e2a2f8cc5b94cb273d8478ca1e/lib/libsqlite3.a
-- Library ssl found ~/.conan/data/openssl/1.1.1k/_/_/package/23b828d52c0630e6b0b96d2945419feb7843c4f8/lib/libssl.a
-- Library crypto found ~/.conan/data/openssl/1.1.1k/_/_/package/23b828d52c0630e6b0b96d2945419feb7843c4f8/lib/libcrypto.a
-- Library bz2 found ~/.conan/data/bzip2/1.0.8/_/_/package/1d984b241c5c01f748cafe0b37dc9567ed236fef/lib/libbz2.a
-- Library z found ~/.conan/data/zlib/1.2.11/_/_/package/23b828d52c0630e6b0b96d2945419feb7843c4f8/lib/libz.a
-- Library m not found in package, might be system one
-- Library dl not found in package, might be system one
-- Library pthread not found in package, might be system one
-- Library rt not found in package, might be system one
-- Conan: Adjusting default RPATHs Conan policies
-- Conan: Adjusting language standard
-- Conan: Adjusting fPIC flag (ON)
-- Conan: Compiler GCC>=5, checking major version 9
-- Conan: Checking correct version: 9
-- Conan: C++ stdlib: libstdc++
BUILD TYPE: Debug
-- Configuring done
-- Generating done
CMake Warning:
  Manually-specified variables were not used by the project:

    CMAKE_EXPORT_NO_PACKAGE_REGISTRY
    CMAKE_INSTALL_BINDIR
    CMAKE_INSTALL_DATAROOTDIR
    CMAKE_INSTALL_INCLUDEDIR
    CMAKE_INSTALL_LIBDIR
    CMAKE_INSTALL_LIBEXECDIR
    CMAKE_INSTALL_OLDINCLUDEDIR
    CMAKE_INSTALL_SBINDIR


-- Build files have been written to: ./boilerplate-conan/build
Scanning dependencies of target md5
Scanning dependencies of target sample
[ 25%] Building CXX object CMakeFiles/md5.dir/md5.cpp.o
afl-cc++2.59d by Michal Zalewski
[!] NOTE: afl-gcc is deprecated, llvm_mode is much faster and has more options
[ 50%] Building CXX object CMakeFiles/sample.dir/sample.cpp.o
afl-cc++2.59d by Michal Zalewski
[!] NOTE: afl-gcc is deprecated, llvm_mode is much faster and has more options
afl-as++2.59d by Michal Zalewski
[+] Instrumented 7 locations (64-bit, non-hardened mode, ratio 100%).
[ 75%] Linking CXX static library libsample.a
[ 75%] Built target sample
afl-as++2.59d by Michal Zalewski
[+] Instrumented 25 locations (64-bit, non-hardened mode, ratio 100%).
[100%] Linking CXX static library libmd5.a
[100%] Built target md5
+ popd
./boilerplate-conan
```

## ./bin/clean.sh

クリーンコマンドは以下のように使います。

```bash
$ ./bin/clean.sh 
+ rm -rf build/
```
