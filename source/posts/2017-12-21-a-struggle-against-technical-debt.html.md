---
title: 技術的負債との戦いにおいて重要なこと
date: 2017-12-21 22:30 +0900
tags: Tech, Technical-debt, Project-managing
---

# はじめに

この投稿は[コミュニケーション Advent Calendar 2017](https://qiita.com/advent-calendar/2017/communication)の12月22日分の投稿になります。

会社でマニュアルを書くために導入したSphinxがまるまる技術的負債になり、素のHTMLで書き直されるという悲しい状態になっているヨーシャことIosif Takakuraです。

今回は技術的負債との戦いにおいて重要なことについて書きました。
そもそも、このコミュニケーション Advent Calendar 2017に投稿しているということで重要なことがコミュニケーションであろうことは予想がつくと思われます。

# 技術的負債とコミュニケーション

## なぜ技術的負債は後回しにされがちなのか

では、以下のスライドをご覧ください。

<iframe src="//www.slideshare.net/slideshow/embed_code/key/NLfS6eLTZX70jm" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/iosiftakakurayusuke/ss-83706211" title="技術的負債との戦い方" target="_blank">技術的負債との戦い方</a> </strong> from <strong><a href="//www.slideshare.net/iosiftakakurayusuke" target="_blank">Iosif Takakura</a></strong> </div>

このスライドで挙げたように、技術的負債はお金が絡み、しかも一人ではなんともならないものです。
さらにやっかいなことに、エンドユーザーには技術的負債を解消する価値が見えづらいのです。
そうなってくると、エンドユーザーにとって技術的負債の解消は後回しになってしまうのです。

## 技術的負債を解消することは長期的に考えてプラスである

実際は技術的負債を解消することにより、システムへの機能追加や不具合対応がしやすくなるため、長期的に考えればエンドユーザーにとってもよいことがあるのです。
しかし、人間は長期の利益より短期の利益を優先する習性があるようで、対処すれば少しプラスになり、大きなマイナスを負うことが避けられる技術的負債の解消より目先の機能追加に走ってしまいます。
そうなってくると、技術的には正しい話であっても、顧客の利益につながらないと判断されてしまいます。

## 技術的負債を解消するには説得が必要である

そのためには、チーム内だけではなく、なるべく多くのステークホルダーに、今のままでは問題だらけだということを理解してもらわないといけないわけです。
そこで、もっとも重要なのが当然ながらコミュニケーションスキルです。
それも、相手の利益につながることをうまく説明しなければいけません。
そこで、重要なのは「数字」と「お金」でうまく可視化するということが必要になります。
「現状維持＝不利益」で、「技術的負債の解消＝（長期的には）利益」ということを訴えましょう。
訴えるとすれば、以下のポイントです。

- 技術的負債を放置すると機能追加や改修に時間がかかるようになる
    - Workaround Oriented Programmingが流行る
- 技術的負債を放置するとエンジニアの技術レベルが向上しない
    - 「正しい」対処方法が学べない
- 技術的負債を放置するとエンジニアのモチベーションが下がる
    - 「もっと楽になる方法」を使えないのはエンジニアにとってストレス
    - ここを放置すると「できるエンジニア」から離職するスパイラルになる

# 最後に

何事も説得力が大事です。

# 参考文献

[技術的負債](https://qiita.com/erukiti/items/9cc7850250268582dde7)
[技術的負債とはどういうこと？](https://qiita.com/itachi2901/items/2377bbf0e33971840b83)
[技術的負債と戦わずにマネジメントする](https://qiita.com/newta/items/b446f7dc52cc50397aca)
[エンジニアはなぜ機能追加を拒むのか](https://qiita.com/aggre/items/2c10fdb7d06bab558523)