---
title: 安易なバージョンアップで Middleman を壊した話
date: 2021-12-24 12:00 +0900
tags: Advent-calendar, Tech, Essay, Ruby, Middleman
---

# 安易なバージョンアップで Middleman を壊した話

## はじめに

この記事は[アスタルテ ゆるふわ アドベントカレンダー Advent Calendar 2021](https://adventar.org/calendars/6167)の12月24日分の記事です。

## Middleman is 何？

[Ruby 製の静的サイトジェネレータ](https://middlemanapp.com/)です。

最新版は v4.4.2 ですが、 JAMstack 隆盛のこの世界で使っている人がいるかというとかなり疑問です。

なお、私はさらに古い v3.4.1 を使っています。

## 何が起こったのか

1. 骨董品の静的サイトジェネレータ、 Middleman を2016年から使っていた
2. 特にライブラリのアップデートなんてしてない
3. dependabot からものすごい量のお叱りが
4. こりゃヤバいと思って Gem[^1] のバージョン上げたら Middleman がぶっ壊れた

[^1]: Ruby のパッケージ。

## 一体、どれだけ古い Gem を使っていたんだ？

とりあえず以下の Gemfile をご覧ください。ぶっちゃけ闇です。

``` Gemfile
source 'https://rubygems.org'

# middleman
gem 'middleman', github: 'middleman/middleman', branch: 'v3-stable'

# use oga for html parser (without nokogiri)
gem 'middleman-blog', :github => '5t111111/middleman-blog',
                      :branch => 'with-oga'
gem 'oga', '~> 0.3.0'

# For syntax highlighting
gem 'middleman-syntax', '~> 2.0.0'

# Live-reloading plugin
gem 'middleman-livereload', '~> 3.4.2'

# For feed.xml.builder
gem 'builder', '~> 3.2.2'

# For using Slim template
gem 'slim', '~> 3.0.1'

# For GitHub Pages deployment
gem 'middleman-deploy', '~> 1.0'

# For S3 deployment
gem 'middleman-s3_sync', '~> 3.0.47'

# For Markdown
gem 'redcarpet', '~> 3.2.2'

# For sitemap
gem 'sitemap_generator', '~> 5.0.5'

# Compass plugins
gem 'breakpoint', '~> 2.5.0'

# Web server
gem 'puma', '~> 4.3'

# to serve static files
gem 'rack-contrib', '~> 1.2.0'

# Heroku New Relic Addon
gem 'newrelic_rpm'

gem 'middleman-social_tag_view_helper'

gem 'solargraph', group: :development
```

と、Middleman V3 を未だに使い続けるカオス状態です。

もう既にサポートも切れているし、何でこんなのを使ってるんだってことになりました。
移行先については JAMstack + Headless CMS を考えていました。
最初は Django ベースの Wagtail を考えていたのですが、 Strapi の方が相性がよさそうということで[そちらで開発を続けています](https://github.com/huideyeren/huidetang)。
ちなみに、フロントエンドは Next.js 予定です。

## 正直以降のめどは立ってるの？

……全く立っていません。大急ぎ開発します。

## 被害状況は？

Middleman が動かなくなりました。とりあえずは、ファイルを生成して書いています。
なお、静的サイトジェネレータなのでページは公開されたままですし、セキュリティ上も問題ない……はず。

## 対策

とりあえず Git の履歴を元に戻しました。

でも、まだローカルでは動いていないです。

## 教訓

ライブラリのアップデートは深く考えないで行わないと爆死します。

これからは、リスクとリターンを天秤にかけて慎重に行います。