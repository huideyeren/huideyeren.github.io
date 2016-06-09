---
title: recommonmarkを使ってSphinxで日本語のMarkdownを使うとHTML生成時に見出しのIDが効かない
date: 2016-06-10 07:25 +0900
tags: Sphinx, Markdown, Documentation
---

# SphinxとMarkdown

recommonmarkプラグインの登場により、SphinxでもMarkdownで記事が書けるようになりましたが、見出しに日本語を含んだMarkdown文書をパースしようとすると、ASCII文字列しかIDに含まれない状態になります。

たとえば、「hoge」というh1見出しを作った場合は`h1#hoge`になるのですが、「ほげ」だった場合は`h1#`になってしまい、アンカーが効きません。

なので、SphinxのHTMLでの目次のリンクがうまく作動しない状況です。

# 場渡り的な解決策

現状の解決策として、Pandocを使用してMarkdownを一回reStructuredTextにしてしまう方法があります。こうすると、表や注釈などPHP Markdown Extraの書式が使える上、日本語だけの見出しでもIDが振られ、HTMLドキュメントの目次が作用するようになります。

# できれば……

KramdownがPythonに移植されて組み込めるようになってくれるとありがたいです。

# 欠点

この方法の欠点は、Markdownの他にreStructuredTextも覚えなければいけない点です。なにせBlockdiagとか使う場合はMarkdownだとディレクティブ埋め込めないので。
