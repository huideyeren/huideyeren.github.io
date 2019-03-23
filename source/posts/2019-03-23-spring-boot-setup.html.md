---
title: Spring Boot Setup
date: 2019-03-23 12:00 +0900
tags: Tech, Kotlin, SpringBoot
---

# Spring Boot に入門を志しています

Kotlin で Spring Boot をやってみようと思い立ったので環境構築をしてみました。

## 環境構築編

ここからは、実際に私が行った環境構築の手順をお伝えします。

### JDK のインストール

[Amazon Corretto](https://aws.amazon.com/jp/corretto/) の公式HPからダウンロード。

インストーラをダブルクリックしてインストールを行う。

`JAVA_HOME` と `JDK_HOME` 環境変数を設定。

### SDK のインストール

``` Shell
$ curl -s https://get.sdkman.io | bash
```

### Kotlin のインストール

``` Shell
$ sdk install kotlin
```

### ktlint のインストール

``` Shell
$ sdk install ktlint
```

### Visual Studio Code に拡張をインストール

入れた拡張は次のとおり。

1. Java Extension Pack
2. Kotlin
3. Kotlin Debugger
4. Spring Boot Extension Pack

その後、Visual Studio Code の設定で `java.home` と `java.jdt.ls.vmargs` を設定しておく。

`java.jdt.ls.vmargs` には `"-noverify -Dfile.encoding=utf8 -Xmx1G -XX:+UseG1GC -XX:+UseStringDeduplication"` を設定する。

## プロジェクトを作る

VSCode でコマンドパレットから Gradle での Spring Boot プロジェクトの作成を呼び出す。

選んだのは次のとおり。

- 言語: Kotlin
- バージョン: 2.1.3
- パッケージ: Web, DevTools, JPA, Flyway, PostgreSQL, Thymeleaf

## GitHub にあげる

この時点で、できあがったプロジェクトを GitHub へ。

[GitHub Repository](https://github.com/huideyeren/springBootStudy) はこちら。

（今後追記予定）