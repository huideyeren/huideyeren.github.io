---
title: MarkdownエンジンをKramdownに変えました。
date: 2016-03-16 07:50 +0900
tags: IT技術, Ruby, Middleman
---

# MarkdownのエンジンをKramdownに変えました。

きっかけは、[KramdownのGFMサポート](http://kramdown.gettalong.org/parser/gfm.html)でした。

GFMサポートによって、GitHubでも[GitHub PagesのMarkdownエンジンをKramdownに切り替える](https://help.github.com/articles/updating-your-markdown-processor-to-kramdown/)旨のアナウンスを発表しています。これにより、5月1日以後はGitHub PagesではMarkdownのエンジンはKramdownのみのサポートになるようです。

ということで、当BlogでもMarkdownエンジンをKramdownに変更することとしました。

# Kramdownの設定

とりあえず、`config.rb`での設定は以下の通りにしています。

``` ruby
set :markdown, input: "GFM",
               hard_wrap: true
```

# 以下テスト

## autolink

http://huideyeren.info/

## tables

|hoge|piyo|
|----|----|
|foo |bar |

## 単語の中のem

hoge_piyo_huga

## 取り消し線

~~hogehoge~~

## TOC

HTMLにアンカーがあればTrue

## 上付き

2^nd Children

## バッククオートで囲むスタイルのコードブロック

``` ruby
puts "Hello, World"
```

## 改行

ああああ
いいいい
うううう
