*test
;/////////////////////////ここからテスト用の準備///////////////////////////////
[stopbgm]
;暗転プリロードサブルーチン
[call target=*3_1 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[プリロード画面消去]
;//////////////////////////////ここまでテスト用///////////////////////////////////
*first
;～～～～～～～～～～～～～シーン料亭　表示準備～～～～～～～～～～～～～～～～～
;【テキスト全画面】茶・和紙風背景に白文字
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[image layer=29 x=0 y=0 zindex=0 storage="bg/bg_prologue.jpg" time=50]
;料亭
[freeimage layer = 1]
[wait time=10]
[背景_料亭風の屋内（昼)]
[font color=white size=27]
その後、華織様が用意された場で、[r]
四条家と[名字]家で会食を共にすることとなった。[p]
;華道展から食事の流れ思いつかない　終わりまで家族を待たせるわけにもいかないし
[call target=*start storage="macro_tati_sijyou.ks"]
[四条イベントシーン構築]
[四条ベース羽織]
[四条通常]
[主人公ポーズ通常]
[主人公通常]
[wait time=10]
[freeimage layer=29 time=0]
[四条ボタン表示]
;==========================================================================
#
;再度,ご迷惑をおかけしたことを詫びる四条家[p]
[whosay name="四条父" color="#9B608B"]
「どうか[emb exp="sf.father_name"]さん。これからも、華織と娘さんとの[r]
[sp]お付き合いをお願いできないだろうか……」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
;お付き合いをお願いできないだろうかきいてくる
[whosay name=&sf.father_name color="DarkSlateBlue"]
「[名前]、聞くまでもないが、華織くんのことを選んで良かったかね？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;～～～驚きつつ困惑照れ～～～
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
;↓目：[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
;～～～驚きつつ困惑照れ～～～
「お父様……」[p]
#
私は、自然と華織様と見つめ合った。[p]
[主人公照れ目普通]
;ほほえみ？
[四条真剣]
[whosay name="華織" color="olivedrab"]
（[名前]さん）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉じ]
「……はい。華織様を選んで、良かったと思います」[p]
[whosay name=&sf.father_name color="DarkSlateBlue"]
「娘がこう言うのだ。 嫁ぐ娘を寂しく思ったとしても、[r]
[sp]"勿論"と言わねば、父親として[ruby text=すた]廃る。[r]
[sp]さぁ、未来の夫婦に祝杯を上げようではないか！」[p]
#
[主人公通常]
父の[ruby text=こう]口[ruby text=じょう]上を起点に、晴れやかな空気が流れる。[p]
[四条微笑み]
#
私は、もう一度、華織様と見つめ合った。[p]
;～～～～～～～～～～シーン晴れやか～～～～～～～～～～～～～～～～～～～～
[autosave]
[whosay name=文矢 color="#538a8a"]
「[名前]、よかったね」[p]
;～～淑女度低い場合～～
[if exp="f.para_shujinkou_shukujodo<200"]
;主人公笑顔
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい！」[p]
[else]
;～～淑女度高い場合～～
;主人公柔微笑み
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[endif]
[四条退場準備 storage="bg/bg_ryoutei.jpg" time=600]
;～～～～～～～～～～シーン晴れやかの中、切ない～～～～～～～～～～～～～～～～～～～～
*common1
[autosave]
;【背景】宴会場
[背景_四条宴会]

[主人公通常]
;【SE】人々のざわめき（ザワザワ…宴会）
[playse storage=zawa_enkai.ogg loop=false ]
#
宴が半ばに入る頃、
お父様方は、酔い冷めならぬ表情で、これから訪れるであろう幸せな悩みについて、花咲かす。[p]
そんな中、お兄様だけは、落ち着いた様子で盃を口にしていた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様も華織様とお話されては[ruby text=い]如[ruby text=かが]何ですか？」[p]
[whosay name=文矢 color="#538a8a"]
「いや、控えておくよ。どうやら今の華織はお父様のお相手をしてる[r]
[sp]ようだ」[p]
#
お兄様の視線を辿ると、"将来の夫婦のあり方"について、[r]
質問責めにあっている華織様を見つけてしまった。[p]
;質問内容は、ぼかしておく
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
[主人公ふぅ閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（ふぅ……お父様ったら、まだ気の早いことを華織様に聞いていらっしゃる[r]
[sp]わ……）[p]
[whosay name=文矢 color="#538a8a"]
「[名前]と華織との結納まで、もうすぐなんだね……」[p]
#
[主人公通常]
お兄様は、ぼんやりと宴を眺めた。[p]
[主人公ポーズ片手]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうかされましたの？」[p]
[whosay name=文矢 color="#538a8a"]
「[名前]が、すっかり大人になって月日というものが早く感じてしまうよ」[p]
[主人公ポーズ通常]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「あら、お兄様は、私が、じゃじゃ馬のままでいて欲しかったのですか？」[p]
[主人公通常]
[whosay name=文矢 color="#538a8a"]
「僕の方が先に出て行ったから、まだいいんだろうけどさ……[r]
[sp]本当のことを言うと、少し寂しくなる」[p]
[主人公驚]
;～～～～～～～～～～シーン切ない～～～～～～～～～～～～～～～～～～～～
;=================================================================================_
*seen1
[autosave]
;背景・酒盛き（未定）
;[暗転]
;[chara_mod name="bg" storage="toumei.gif"]
#
お兄様は、さかづきを揺らし、波間を見つめる。[p]
[主人公柔和ほほえみ１]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「……お兄様も、お父様と同じことを思うのですね」[p]
[whosay name=文矢 color="#538a8a"]
「当たり前だよ。　僕の後ろをついていた[名前]が、僕の友人に[r]
[sp]取られちゃうんだから」[p]
;じゃじゃ馬言い過ぎなので訂正
[whosay name=文矢 color="#538a8a"]
「けど、[名前]は、昔から、華織をみると走り寄っていったから、[r]
[sp]当然といえば、そうかもしれないね」[p]
;～～～淑女度低い場合～～～
[if exp="f.para_shujinkou_shukujodo<200"]
;主人公困り照れ
[主人公眉困り]
[主人公目大]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様。　私、もうその様な子供ではありませんわ」[p]
;主人公照れ怒り
[主人公眉強気]
[主人公目大]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「急にどうかされまして？　お兄様」[p]
[else]
;～～～淑女度高い場合～～～
#
[主人公憂い]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（今日のお兄様は、どこか寂しそうだわ……）[p]
[主人公口ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様、急にどうかされました……？」[p]
[endif]
*commo1
;～～～～～共通～～～～
[whosay name=文矢 color="#538a8a"]
「……今日は、集まったからかな。[r]
[主人公憂い]
[sp]だから、本当に[名前]が、華織の家に嫁いでしまうって感じているのかも」[p]
;～～～～～～～～～～シーン　やさしい主人公～～～～～～～～～～～～～～～～～～～～
;=================================================================================_
*seen2
[autosave]
[if exp="f.para_shujinkou_shukujodo<200"]
;～～～淑女度低い場合～～～
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お兄様のことは、尊敬しております。[r]
[sp]華織様と、同じように大事な家族のひとりです」[p]
[whosay name=文矢 color="#538a8a"]
「ありがとう。[名前]」[p]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「今までお兄様が、私を寂しくさせていた分、お兄様も驚くほどの良妻に[r]
[sp]なってみせますね」[p]
[whosay name=文矢 color="#538a8a"]
「弱ったな、痛いところをつくね」[p]
[else]
;～～～淑女度高い場合～～～
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「安心して下さい。兄妹というものは、切っても切れないものです」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私はお兄様を尊敬しております。[r]
[sp]ですので、切る気も、[ruby text=いっ]一[ruby text=さい]切、ございません」[p]
;ダジャレかな
[whosay name=文矢 color="#538a8a"]
「ありがとう。[名前]」[p]
[主人公ほほえみ]
[endif]
;～～～～～～～～～～シーン選択肢へ～～～～～～～～～～～～～～～～～～～～
*common2
[autosave]
;【背景】暗転
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
;【背景】宴会または料亭席全体;宴会会場全体
[背景_四条宴会]
;[chara_mod name="bg" storage="bg/B4nFWraU42/bg_sijyou_enkai.jpg"]
[eval exp="f.haikei_credit='illustration　by　＠名無しさん１'"]

#
お兄様は、安堵したかのように微笑むと華織様をみつめた。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公ポーズ片手]
（そういえば、お兄様は、どのようにして華織様と出会ったの[r]
[sp]でしょうか？）[p]
;～～～～～～選択肢～～～～～～～～～
;背景変更:和紙風 セピア色
[背景_選択肢_和紙風セピア色]
;[chara_mod name="bg" storage="bg/plane_sepia.jpg" time=100]
[eval exp="f.haikei_credit=''"]
;選択肢用レイヤーを追加
[position layer=message1 height=160 top=100 left=230 opacity=0]
@layopt layer=message1 visible=true
[current layer="message1"]
[font size=32]
[link target=*deai]お兄様と華織様の出会いが気になった。[endlink][r]
[r][r][r]
[link target=*not_fumiya]私も華織様を見つめた。[endlink][r]
[resetfont]
[s]
;～～～～～～～～～～～選択肢おわり～～～～～～～～～～～～～～～～

;～～～～～回想イベントへ～～～～～～～～～～
*deai
[cm]
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
#
[主人公ポーズ通常]
[主人公通常]
お兄様と華織様の出会いが気になった。[p]
;==========================================
;背景　宴会会場　または料亭
;宴会または料亭席全体;宴会会場全体
[背景_四条宴会]
;==========================================
;【SE】人々のざわめき（ザワザワ…宴会）
[playse storage=zawa_enkai.ogg loop=false ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（私は、お兄様が華織様を連れてこられて出会った気がしますが……）[p]
;兄、主人公の視線に気づく
[whosay name=文矢 color="#538a8a"]
「なんだい？　[名前]」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「いえ、[r]
[sp]そういえば、お兄様は、どのようにして華織様と出会ったのでしょうかと[r]
[sp]疑問に思いまして……」[p]
;兄、華織と出会う話をする
[whosay name=文矢 color="#538a8a"]
「お父様と華織のお父様が知り合いなのは、[名前]も知っているだろう？」[p]
[主人公口ほほえみ]
[if exp="f.para_shujinkou_shukujodo<200"]
;～～淑女度低い場合～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、磯野からは、なんとなくですが、聞かされております。[r]
[sp]昔から、華織様のお父様と仲が良かったそうですが……」[p]
[else]
;～～淑女度高い場合～～
「はい、磯野からは、少しばかり聞かされております。[r]
[sp]昔から、華織様のお父様と仲が良いと聞かされておりました」[p]
[endif]
[whosay name=文矢 color="#538a8a"]
「なんのことはないさ。[r]
[sp]それでも、知りたいのかい？」[p]
[主人公目パチ1回]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（きっとお兄様は、こういった時でないと、ゆっくりと、[r]
[sp]ご自分のことお話しされないと思うわ）[p]
[fadeoutbgm time=3000]
#
@jump storage="sijyou/sijyou_3_1b_fumiya.ks" target=first
;四条 華織と文矢
[s]
*modoru
[whosay name=文矢 color="#538a8a"]
「以来、僕は、華織のことをほおっておけない大事な友人の一人と思って[r]
[sp]いる」[p]
[whosay name=文矢 color="#538a8a"]
「ああ、[名前]？  この事は、今忙しくしてる奴には、言わないように」[p]
#
お兄様は、忙しく席を整える華織を見つめた。[p]
@jump target=common3
[s]
;～～～～～～シーンスキップ～～～～～～～～～
*not_fumiya
[cm]
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
;メッセージレイヤサイズを会話窓用に戻す
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
[主人公ポーズ通常]
[主人公ほほえみ]
#
私も華織様を見つめた。[p]
[fadeoutbgm time=3000]

「……[名前]。 この事は、今忙しくしてる奴には、言わないように」[p]
;～～～～～～～～～～共通～～～～～～～～～～～～～
*common3
[autosave]
;宴会または料亭席全体;宴会会場全体
[背景_四条宴会]
;==========================================
[whosay name=&sf.father_name color="DarkSlateBlue"]
「華織君も、もう少し飲んだらどうかな」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】みちくさ（楽しいお出かけの場面、すこしコミカルな場面などに
[playbgm storage="michikusa.ogg" loop=true]
[eval exp="f.bgm_storage='michikusa.ogg'"]
[endif]
[whosay name="華織" color="olivedrab"]
「ありがとうございます。僕も充分に頂いております」[p]
[主人公驚]
[主人公ポーズ片手]
[whosay name="四条父" color="#9B608B"]
「お前達も、来てくれたか！」[p]

[主人公横目]
[主人公口通常]
[whosay name="四条一華" color=%mp.color]
「遅くなってすまない」[p]
[whosay name="四条父" color="#9B608B"]
「華織、皆の席を整えてやってくれ」[p]
[whosay name="華織" color="olivedrab"]
「！ はい」[p]
[主人公困りほほえみ]
[主人公ポーズ指]
[whosay name=文矢 color="#538a8a"]
（まったく君って奴は、主役の[ruby text=ひと]一[ruby text=り]人だっていうのに気を使ってさ）[p]
#
[whosay name="華織" color="olivedrab"]
「ああ、[ruby text=み]美[ruby text=はな]華は、こっちの席に！」[p]
;お父さん、すこしやけ酒でもあり
[whosay name=&sf.father_name color="DarkSlateBlue"]
「なんだい？華織くん、芸姑さんも呼びんでくれたのか。[r]
[sp]華織くんは、気が利くね」[p]
;主人公ふぅ
[主人公ポーズ通常]
[主人公困りほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お父様……」[p]

;=================================================================================_
*seen3
[autosave]
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
#
功を奏でるように女将達は三味線を鳴らす中、空が薄っすらと茜色に[r]染まる。[p]
[主人公通常]
[主人公目閉じ]
;==========================================
;【背景】料亭風の屋内（夕）
[背景_料亭風の屋内（夕)]
[layopt layer=13 visible=true]
[image layer=13 name="jyunbi" left=1 top=1 storage="bg/bg_ryouotei_yuu.jpg" time=100]
[eval exp="f.haikei_credit='photo　by　usagi_s　http://www.s-hoshino.com/'"]
;==========================================
#
そうして、華織様のおかげで席は埋まり、本来の四条家と[名字]家の家族が[r]
集まった。[p]
;【SE】人々のざわめき（ザワザワ…宴会）
[playse storage=zawa_enkai.ogg loop=false ]
;家族についての手紙を読んでいる
[主人公通常]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（お手紙で教えて頂いた通りに、華織様のご兄弟は、四兄弟なのですね）[p]
[主人公ポーズ通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（これからは、この方々とも家族となるのだと思うと緊張しますわ）[p]
;この合間にト書きかフォロー会話を何か入れたいが思いつかず。
[四条ベース羽織]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;[四条口開]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
;四条登場
[freeimage layer=13 time=1000]
[wait time=1000]
[layopt layer=13 visible=true]
;四条登場
;～～～～～～～～～～～～～～～シーン個性的な兄弟～～～～～～～～～～～
[whosay name="華織" color="olivedrab"]
「文矢、[名前]さん。[r]
[sp][ruby text=と]渡[ruby text=ふつ]仏やら留学中で紹介できてなかった兄弟を改めて、[r]
[sp]紹介するね……」[p]
#
華織様は、少しやつれた様子で、ご兄弟の紹介をはじめた。[p]
;上が　ひらがな　ご兄弟なので合わせます　句点で読みやすく
;四条兄弟との顔合わせで華織はひやひやする
[whosay name=文矢 color="#538a8a"]
「？ 華織、何か疲れてないかい？」[p]
[四条困り微笑み]
;[四条汗]
;～～～～～～～～～～～～～～～シーン個性的な兄弟　長兄～～～～～～～～～～～
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「こちらが、僕の兄の[ruby text=いち]一[ruby text=か]華」[p]
[whosay name="四条一華" color=%mp.color]
「長男の四条 [ruby text=いち]一[ruby text=か]華です。
外交官をしており、普段は[ruby text=フ]仏[ruby text=ラン]蘭[ruby text=ス]西にいます。[r]
[sp]それにしても、君のような美しい方が [ruby text=い]義[ruby text=もうと]妹になって嬉しいよ」[p]
;=================================================================================_
[if exp="f.sijyou_ani == true"]
[主人公照れ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい、よろしくお願いします。[r]
[sp]あの、こちらこの前に、お借りたしたものです」[p]
[whosay name="四条一華" color=%mp.color]
「わざわざ、ありがとう。　お互い、また会えて嬉しいね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
（えぇ……と？）[p]
[whosay name="華織" color="olivedrab"]
[四条通常]
「へぇ、後で話を聞こうかな……？」
[主人公目通常]
[p]
[whosay name="四条一華" color=%mp.color]
「華織。もしかして妬いたかい？」[p]
[whosay name="華織" color="olivedrab"]
「兄さんは、好きなお酒でも飲んでて下さい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
（後で華織様に[ruby text=いち]一[ruby text=か]華と会った時の事、お話しましょう）[p]
;=================================================================================_
[else]
[主人公驚]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「は、はい、よろしくお願いします」[p]
[主人公通常]
[主人公横目]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（[ruby text=いち]一[ruby text=か]華様は、やはり、ひとつ上のお兄様だけに華織様に[r]
[sp]よく似ていらっしゃるわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目通常]
 [主人公眉困り]
（ただ、雰囲気そのものは、華織様の素朴さを抜いたのような……）[p]
[主人公ポーズ通常]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「こう見えて、根は厳しい人だからね……？」[p]
 [主人公眉通常]
[whosay name=文矢 color="#538a8a"]
（ああ、この方が華織の言っていた、お兄さんか）[p]
[主人公通常]
[whosay name="四条一華" color=%mp.color]
「華織。もしかして妬いたかい？」[p]
[四条通常]
[whosay name="華織" color="olivedrab"]
「兄さんは、好きなお酒でも飲んでて下さい」[p]
[endif]
;=================================================================================_
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「ほら、[華衣]も挨拶して」[p]
#
華織様の横で、挨拶を始めたのは、[華衣]さんだった。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
（[華衣]さん……）[p]
#
華衣さんは、慣れない場と、ばつの悪さで顔を下げていると言った様子であった。[p]
[whosay name="四条 華衣" color=%mp.color]
「こんにちは、また会ったな……」[p]
[四条微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口開]
「こんにちは、元気にされてましたか？」[p]
[whosay name="四条 華衣" color=%mp.color]
「まあ。元気にしてた……[r]
[主人公口ほほえみ]
[sp]お前が、[ruby text=あ]義[ruby text=ね]姉になるなら悪くないと思う……よろしく」[p]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;～～～～～～～～～～～～～～～シーン個性的な兄弟　華衣～～～～～～～～～～～
;=================================================================================_
*seen4
[autosave]
#
華衣さんは、頷くように顔を下げると、兄に向き直し、驚くほど丁寧に[r]
挨拶を交わす。[p]
[主人公横目]
[主人公ポーズ指]
[whosay name="四条 華衣" color=%mp.color]
「お義兄さん、華衣と申します。よろしくお願いします。[r]
[sp]先日は[名前]さんにご迷惑おかけして申し訳ありませんでした」[p]
[主人公目通常]
[主人公ポーズ通常]
[whosay name=文矢 color="#538a8a"]
「いえいえ。華織、素直で可愛い弟じゃないか」[p]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「全く、不詳で……自慢の弟だよ」[p]
[whosay name="四条 華衣" color=%mp.color]
「……」[p]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「そうやって、すぐに顔にでるとこ、とかね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
[主人公横目]
（？　そうなのかしら？）[p]
[whosay name="四条 華衣" color=%mp.color]
「うるさい……」[p]
;[四条口笑顔]
;～～～～～～～～～～～～～～～シーン個性的な妹　　美華～～～～～～～～～～～
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「ほら、[ruby text=み]美[ruby text=はな]華も挨拶なさい」[p]
[四条通常]
[主人公ポーズ通常]
[主人公目通常]
#
[華衣]さんと、距離をとっていた少女が華織様の隣に現れた。[p]
;まつまい・ばつまい　日常会話だと　すえのいもうと　らしい
[whosay name="四条 美華" color=%mp.color]
「こ、こんにちは……[ruby text=すえの]末[ruby text=いもうと]妹の[ruby text=み]美[ruby text=はな]華と申します」[p]
;読みにくいからわけよう　みか　にしようと思ったけどプレイヤーに悪いので確率低めの名前に
[主人公口ほほえみ]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
[whosay name="四条 美華" color=%mp.color]
「ふ、普段は、聖白百合の寄宿舎にいます……。[r]
[sp][名前]様のことは、華織お兄様からお手紙で聞いており、お会い[r]
[sp]しとうございました……」[p]
;学校名は適当ユリっぽくない学校名を　華衣と折り合いが悪いので寄宿舎に入っている（手紙にて）
#
華織様のような、ほんのりとウェーブがかかった長い髪の少女は、[r]
丁重にも、三つ指をついて挨拶をした。[p]
[主人公笑顔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい、宜しくお願い致します」[p]
[主人公口ほほえみ]
[whosay name="四条 美華" color=%mp.color]
「は、はいっ!」[p]
#
[主人公横目]
;プレイヤーに嫌われそうなので修正
[whosay name="華織" color="olivedrab"]
「[ruby text=み]美[ruby text=はな]華、緊張するからって、顔を下げたままにしないで」[p]
#
[主人公ほほえみ]
[whosay name="四条 美華" color=%mp.color]
「こ、今後とも、よろしくお願いします」[p]
[四条困り微笑み]
[whosay name="華織" color="olivedrab"]
「……箱入り娘で、ごめんね」[p]
;～～淑女度低い場合～～
[if exp="f.para_shujinkou_shukujodo<200"]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公通常]
「いえ、 可愛らしい妹様ですね」[p]
[主人公口ほほえみ]
[else]
;～～～淑女度高い場合～～～[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ほほえみ]
「いえ、可愛らしい妹様ですね」[p]
[endif]
;文通について尋ねる美華。美華、億劫に思う
;主人公の言葉に立て直す美華。 あくまで盛り上げ役でなければ登場させる意味がない
;いくつになるの繋がりが思いつかない
#
[四条微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「それに、お若いのにご挨拶もしっかりしていらっしゃいますのね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公ポーズ指]
[主人公横目]
（いくつになるのでしょうか？ ）[p]
#
華織の柔らかい印象をそのまま引き継いだ少女は、二・三歳ほど幼い印象を受けた。[p]
[主人公ポーズ通常]
[主人公通常]
#
[whosay name="華織" color="olivedrab"]
;[四条口開]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
「[ruby text=み]美[ruby text=はな]華は、今年で[ruby text=じゅう]十[ruby text=よん]四だね」[p]
;[四条口通常]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_futuu.png" time=0]
[wait time=10]
[whosay name="四条 美華" color=%mp.color]
「は、はい。[名前]様、私、今年で[ruby text=じゅう]十[ruby text=よん]四となります！[r]
[sp]それで、[名前]様に常々、お聞きしたいことがありました」[p]
#
[ruby text=み]美[ruby text=はな]華さんは、私と向き直すと、しっかりした口調で尋ねた。[p]
;楽しいシーンから戸惑いへ　BGM難しい　美華の重責感的に五色かな
[fadeoutbgm time=3000]
[whosay name="四条 美華" color=%mp.color]
「[名前]様は、華織お兄様のどの様なところが、お好きなられたのでしょう[r]
[sp]か？」[p]
;どういったところで選ばれたのでしょうか？
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公驚]
「え……！」[p]
[四条驚き]
;言い回しを優しく
[whosay name="四条 美華" color=%mp.color]
「お手紙のやりとりで、どうして華織お兄様になされたのか、[r]
[sp]私、知りたいのです」[p]
;=================================================================================_
*seen5
[autosave]
[if exp="sf.BGM=='ON'"]
;【BGM】五色（重いムードに
[playbgm storage="heavymood_goshiki.ogg" loop=true]
[eval exp="f.bgm_storage='heavymood_goshiki.ogg'"]
[endif]
#
[四条困り]
[主人公驚]
;～～淑女度低い場合～～
[if exp="f.para_shujinkou_shukujodo<200"]
;～～～～淑女度低い場合～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（えぇと……[r]
[sp]あの時は、なんとなく……もありましたけれど）[p]
[主人公口通常]
[主人公目閉じ]
[主人公ポーズ指]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
（昔から知っていたのは華織様という理由で選んでしまいました……）[p]
[else]
;～～～淑女度高い場合～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
（えっ……どうしましょう）[p]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
（ですけど、昔から私のことを知っていたのは華織様で、私も華織様のことが気になって……）[p]
[endif]
[主人公横目]
[主人公ポーズ指]
#
私は、[ruby text=み]美[ruby text=はな]華さんの急な質問に戸惑いを隠せなかった。[p]
[主人公通常]
[主人公ポーズ通常]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
;[四条口驚き]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_odoroki.png" time=0]
[wait time=10]
「[ruby text=み]美[ruby text=はな]華、いきなりそんな質問をして失礼でしょう」[p]
#
;[四条口ムッ]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_mu.png" time=0]
[wait time=10]
[whosay name="四条 美華" color=%mp.color]
「私も、あと二年で勉学を諦め、寄宿舎でて、殿方と手紙のやりとりを[r]
[sp]しなければなりません」[p]
;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[whosay name="四条 美華" color=%mp.color]
「たしかに華織お兄様は、どんな殿方よりも、お優しい人かもしれません」[p]
[whosay name="四条 美華" color=%mp.color]
「ですけど、経済界に出でる[ruby text=いち]一[ruby text=か]華兄様や他の社交界の花形と比べると[r]
[sp]殿方としての頼り甲斐や魅力があるとは思えません」[p]
[四条憂い]
;=================================================================================_
*seen6
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[主人公口ムッ]
「そんなことはないですわ。[r]
[四条驚き]
[sp]華織様は、お会いする時、いつも私をエスコートしてくれます」[p]
[四条真剣]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
「それに、現にこうやって夢を実現し、[r]
[sp]許しを得る為に私の親に会い、会食の席まで用意してくれました」[p]
;まとめ的な内容↑
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「これだけ誠実な殿方は、私のお兄様以外で見たことがありません」[p]

[whosay name="四条 美華" color=%mp.color]
「私も……私も、そうなのです……他の殿方を信じることができません」[p]
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[主人公口通常]
[主人公ポーズ指]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「えっ……？」[p]
[四条憂い]
[whosay name="四条 美華" color=%mp.color]
「華衣お兄様は粗暴ですし、[ruby text=いち]一[ruby text=か]華兄様は、猫かぶりで見合いに失敗しており[r]
[sp]ます。 私、知らない殿方と文通をするのがとても怖い……」[p]
[主人公ポーズ通常]
[主人公憂い]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「[ruby text=み]美[ruby text=はな]華」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;BGM切り替え
[fadeoutbgm time=3000]
;=================================================================================_
*seen7
#
華織様は、晴れやかな席で私に不安を打ち明ける妹に対して、戸惑った様子で肩を叩いた。[p]
[autosave]
;止めるべきだと思うが悩ましいところ
[主人公目通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（[ruby text=み]美[ruby text=はな]華さんも、昔の私に似ているかもしれない。[r]
[sp]お兄様しか知らなかった頃の私に）[p]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私も初めは不安でした」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】古都に咲く花（プロローグ等）フリーズ対策試験的に[p]の後に配置しclick=trueを抜いてみています
[playbgm storage="prologue_kotonisakuhana.ogg" loop=true]
[eval exp="f.bgm_storage='prologue_kotonisakuhana.ogg'"]
[endif]
;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
[四条目通常]
[主人公目通常]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ですけど、その時は、私の大切なお兄様のお言葉を思い出しました」[p]
[四条目パチ1回]
[whosay name="四条 美華" color=%mp.color]
「お兄様のお言葉……？」[p]
[主人公通常]
[四条眉通常]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「これからの[ruby text=み]美[ruby text=はな]華さんの姉として送ります」[p]
[主人公口ほほえみ]
;言祝ぎを送るじゃおかしいからこんなんでいいか
[whosay name=&sf.girl_namae color="#cf5a7f"]
「[ruby text=み]美[ruby text=はな]華さんにも、それに[華衣]さんにもくるかもしれません。 [r]
[sp]それぞれのお二人の事を一番大切にしてくれて」[p]
[四条口微笑み]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「お二人も、その方を大切に思える人からの手紙が」[p]
[whosay name="四条 美華" color=%mp.color]
「一番、大切に……」[p]
[四条真剣]
[四条目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「その時のはじまりは、うまくいかないかもしれません。[r]
[sp]ですけど、信じて乗り越えたおかげで」[p]
[主人公ほほえみ]
「こんな幸せな出会いがたくさん待っていたのですから！」[p]
[whosay name="華織" color="olivedrab"]
[四条微笑み]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
「[名前]さん」[p]
[whosay name="四条 美華" color=%mp.color]
;お姉様と呼んだ方いいのかなー？と
「お姉様……！ ありがとうございます。[r]
[sp]私、それまでに精一杯、淑女として[ruby text=けん]研[ruby text=さん]鑽しようと思います」[p]
;学びとうとございます？
[whosay name="華織" color="olivedrab"]
「[名前]さん。ありがとう」[p]
;頑張ったのに文矢？と思うので修正
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
（やっぱり、[名前]さんと文矢には敵わないな）[p]
;誘う文句は適当
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「[名前]さん、庭の花を見に行きませんか？[r]
[sp]沈丁花の花が、見事ですよ」[p]
[fadeoutbgm time=3000]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公横目]
[主人公ポーズ指]
「はい」[p]
[主人公退場]
[四条退場 storage="bg/bg_ryouotei_yuu.jpg" time=600]
;=================================================================================_
*seen8
;～～～～～～～～～～～シーン料亭・庭～～～～～～～～～～～～～～～～～～～
#
;[暗転]
[bg storage="toumei.gif"]
華織様に誘われた私は、庭へと赴いた。[p]
[layopt layer=fix visible=false]
;【背景】庭園
[image layer=29 name="jyunbi" left=1 top=1 storage="bg/bg_teien_ishidatami_yuu.jpg" time=100]
[背景_庭園(夕)]
;結
;食事の後。二人になる　夕方[p]
;個性的な兄弟の話をして、心配する華織。主人公は兄弟を好意的に評する
;後ろの室内からは、賑やかな声がする。
[四条ベース羽織]
[四条微笑み]
[主人公ポーズ通常]
[主人公目閉]
[主人公通常]
[layopt layer=fix visible=true]
[freeimage layer=29 time=700]
[wait time=700]
;表示準備
[whosay name="華織" color="olivedrab"]
「ふぅ……空気がすっかり春の香りになりましたね」[p]
;労うのはプレイヤーではなく攻略キャラであるので修正
[if exp="sf.BGM=='ON'"]
;【BGM】きずな（想いを込めるシーンに
[playbgm storage="omoiwokomete_kizuna.ogg" loop=true]
[eval exp="f.bgm_storage='omoiwokomete_kizuna.ogg'"]
[endif]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうですね。 暖かな空気に花の香りが混じっている気がします」[p]
[autosave]
[whosay name="華織" color="olivedrab"]
「[名前]さん。[ruby text=み]美[ruby text=はな]華に助言をしてくれて、ありがとう」[p]
[主人公目閉じ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「私は、お兄様のお言葉を思い出しただけです」[p]
[whosay name="華織" color="olivedrab"]
「そんなことはありませんよ、[r]
[主人公目通常]
[sp]僕が言うのも、なんだけど、個性的な兄弟で、君も疲れましたよね」[p]
;美華の言い回しが優しくなると納得できるかな
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公口ほほえみ]
;↓眉：下がり眉下位置 (伏目、目閉じ時の柔和な表情に向きます) [主人公眉下げ下]
[chara_mod name="girl_mayu" storage="girl/S/mayu_sage.png" time=0]
[wait time=10]
「いえ、兄弟が沢山いらっしゃって、賑やかで楽しかったです」[p]
;とにかくプレイヤーを労う・・・くるしい
[whosay name="華織" color="olivedrab"]
「そう言って頂けると助かります。[r]
[sp][名前]さんのおかげで、久しぶりに兄弟全員がそろったのは良かったのです[r]
[sp]が、[ruby text=まと]纏めるのに苦労してしまいましたよ」[p]
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
#
華織様は、嬉しそうに空を見上げる。[p]
その眼差しは、長い時を振り返るようであった[p]
[主人公眉下げ]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
[主人公口ムッ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（もしかして、[華衣]さんのことで、ご兄弟方は離れていたのでしょうか？）[p]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
;～～～～～～～～淑女度低い～～～～～～～～
[if exp="f.para_shujinkou_shukujodo<200"]
[主人公ほほえみ]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「皆さん、面白い方達ですね」[p]
#
;[四条目閉じ]
[chara_mod name="sijyou_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;[四条眉困り]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「別宅に住むから、そこは安心してください……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ふふ。　ですけど、華やかなお兄様方に囲まれて
;[四条通常]
[ruby text=み]美[ruby text=はな]華様は、[r]
[sp]幸せでしょうね」[p]
[else]
;～～～～～～淑女度高め～～～～
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「華織様が、華織様であらせられることに納得がいきました」[p]
;適当な日本語↑
[四条微笑み]
[四条目大]
[whosay name="華織" color="olivedrab"]
「そうですか？ 」[p]
[四条目通常]
[主人公目閉]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ、[ruby text=いち]一[ruby text=か]華様は、社交界の花形のような華やかさ持っていて、[r]
[sp]華織様はそんなお兄様に惹かれて、優しい華やかさをお持ち[r]
[sp]なられたのでしょう」[p]
[whosay name="華織" color="olivedrab"]
「確かに。僕は、有能な兄の事を尊敬してます。同時に乗り越えたい人でも[r]
[sp]ありますね……」[p]
[主人公柔和ほほえみ１]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そんな華織様の弟様にあたる、[華衣]様は、[r]
[sp]華織様の素朴さをそのままに引き継がれたのですね」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「……[華衣]は、僕の悪いところを見破っていたのかもしれませんね……」[p]
[whosay name="華織" color="olivedrab"]
「今迄は、必要以上に甘やしすぎてたから、つかず離れず見守って[r]
[sp]いきたい……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
（陰ながら私も応援していますわ）[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「華織様のような、華やかで素敵なお兄様方に囲まれて[ruby text=み]美[ruby text=はな]華様は、[r]
[sp]幸せでしょうね」[p]
[endif]

;～～～～～～～～共通～～～～～～～～
*common7
[autosave]
;BGM切り替え案２
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「[名前]さん。君って人は、[r]
[sp]時々、僕より大人びて見えますね……」[p]
;微妙だな↑
[主人公照れ目普通]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そ、そうでしょうか？」[p]
;[四条頬染め]
[chara_mod name="sijyou_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「えぇ。[ruby text=み]美[ruby text=はな]華に文矢の言葉を送る君の姿は、慈愛の女神のような[r]
[wait time=1]
[sp]美しさを感じました」[p]
;フリーズポイント
;褒めておかないと割に合わないので褒める
[whosay name="華織" color="olivedrab"]
「[名前]さんと接する度に、僕の心の早鐘を鳴らす素敵な表情を見つけて[r]
[sp]しまう」[p]
;ドキドキするというのを言い換えるとなんかね
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目閉]
「……」[p]
;[四条眉強気]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「まだ僕が、知り得てない君をもっと知りたい」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公照れ目普通]
「そんな……私は今のままでも充分に、華織様に知って頂いてますわ。[r]
[sp]ですから、華織様のことをもっと私に教えてください」[p]
;しんどい
[whosay name="華織" color="olivedrab"]
「僕のすべては、これからは、いつだって君の前にある」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[主人公目大]
;[主人公口開]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
[主人公ポーズ片手]
「？ 華織様？」[p]
[主人公口ほほえみ]
[主人公ポーズ指]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「賑やかな家族、まだまだ未熟だけど、目指す道の華道。[名前]さんへの愛。[r]
[sp]それが僕の持っているすべて……」[p]
[主人公ポーズ通常]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「[名前]さん。こんな僕の傍にいてくれてありがとう。[r]
_　[名前]さんのおかげで、もう一歩先に進めます」[p]
[主人公柔和ほほえみ１]
[whosay name="華織" color="olivedrab"]
「これからは、僕の全てをもってして、君に恋を綴ります」[p]
;エピローグの回収↑
;いい感じになって見つめ合う二人。
;============================
;沈丁花
[暗転２ storage=bg/B4nFWraU42/jincyou_ge.jpg]
[四条退場]
[主人公退場]
[背景_沈丁花]
[暗転２終了]
;============================
#
華織様の言葉とともに[r]
永遠と不滅の花言葉をもつ沈丁花が、風に乗って甘く香る[p]
;華織の香水は沈丁花かもしれない
[whosay name="華織" color="olivedrab"]
「[名前]さん……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;[主人公目閉じ]
「華織様……」[p]
#
――華織様の瞳が、私をとらえる。　いつもより近い距離。[r]
私たちは手を取り合って見つめ合い………[p]
;間をあけたかった
;華妹が華衣と喧嘩しだしたので戻るふたり　爽やか！
[whosay name="四条 美華" color=%mp.color]
「華織お兄様～～！　[華衣]が私のこと、ぶった～～～！！」[p]
[whosay name="ふたり" color=%mp.color]
;[主人公驚]
「「！！」」[p]
;[主人公照れ]
[whosay name="四条 華衣" color=%mp.color]
「どんくさいから、ちょっと小突いただけだろ！」[p]
;＝＝＝＝＝＝＝表示準備＝＝＝＝＝＝＝
[layopt layer=fix visible=false]
#
;【背景】庭園 夜
;宵の口からもうすこし経った頃合いを目指してみました
;月が明るめで足元は手持ちの行灯か提灯で照らされている(手前に温かみのある光源)イメージです(スクリプト担
[image layer=29 name="jyunbi" left=1 top=1 storage="bg/bg_teien_ishidatami_yoru.jpg" time=100]
[背景_庭園(夜)]
;============================
[四条ベース羽織]
[四条困り微笑み]
[主人公ポーズ通常]
[主人公通常]
[主人公照れ]
[layopt layer=fix visible=true]
[freeimage layer=29 time=800]
[wait time=800]
;＝＝＝＝＝＝＝表示準備＝＝＝＝＝＝＝
[whosay name="華織" color="olivedrab"]
「……帰りましょうか」[p]
[主人公笑顔]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「はい」[p]
[主人公退場]
#
;～～～～～～～～～～～〜〜〜シーン真の兄というもの〜〜～～～～～～～～～～～～～～～～～～～
;=================================================================================_
*seen9
[autosave]
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
;料亭廊下
[背景_四条宴会廊下]
[イベントシーン構築枠茶色]
;=================================================================================_
[whosay name="華織" color="olivedrab"]
（まったく、こういう時は気を効かせてほしいな）[p]
[whosay name="華織" color="olivedrab"]
[四条通常]
「！」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「どうかされましたか？」[p]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「[名前]さん。申し訳ありませんが、僕は用事が出来ました。[r]
[sp]身体を冷やすといけないので先に部屋に戻っててくれますか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「？　はい」[p]
#
[四条目閉じ]
[名前]さんが賑やかな部屋に戻っていく中、僕は[r]
薄暗闇に気配を感じ、足をとめた。[p]
;薄暗闇に潜む人物のために
;ライバル、兄　かはたれに
[whosay name=文矢 color="#538a8a"]
「お帰り。……そんな顔して、また悩みごとかい？」[p]
[四条困り微笑み]
#
まるで気を効かせて待っていたかのような態度で、文矢が話しかけてきた。[p]
[whosay name="華織" color="olivedrab"]
「そうだね。 
;[四条口笑顔]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_warau_s.png" time=0]
[wait time=10]
でも、幸せな悩みごとさ」[p]
;[四条口微笑み]
[chara_mod name="sijyou_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[whosay name=文矢 color="#538a8a"]
「そうなんだ。 ああ、言い忘れたけどさ」[p]
[四条通常]
#
文矢はニコリと笑って腕組みして隠れていた手を取り出す。[p]
;[四条汗]
[chara_mod name="sijyou_emo" storage="sijyou/emo_ase.png" time=0]
[wait time=10]
[whosay name="華織" color="olivedrab"]
「……なんだい？」[p]
#
僕は、文矢の懐の見えない仕草に思わず身構えてしまった。[p]
[四条驚き]
[whosay name=文矢 color="#538a8a"]
「これからも妹のことをよろしく。もう泣かしたらダメだよ」[p]
[四条口微笑み]
#
どこで覚えたのか、文矢は、外国的なジェスチャーで『よろしく』と明るく答えた。[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
（君って奴は、本当に懐の深い男だよ）[p]
;[四条効果消]
[chara_mod name="sijyou_emo" storage="toumei.gif" time=0]
[wait time=10]
;[四条眉強気]
[chara_mod name="sijyou_mayu" storage="sijyou/mayu_tuyoki.png" time=0]
[wait time=10]
[四条口微笑み]
#
敵わない[ruby text=あ]義[ruby text=に]兄兼、友人に僕は、深くうなづいた。[p]
;[四条目にこ]
[chara_mod name="sijyou_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
[四条口笑顔]
[whosay name="華織" color="olivedrab"]
「それなら百も承知だ」[p]
[四条微笑み]
[whosay name="華織" color="olivedrab"]
「なぁ、文矢」[p]
[whosay name=文矢 color="#538a8a"]
「なんだい？」[p]
[四条笑顔大]
[whosay name="華織" color="olivedrab"]
「[名前]さんに会わせてくれてありがとう、君という友人がいて本当に[r]
[sp]幸せだ」[p]
[四条微笑み]
[whosay name=文矢 color="#538a8a"]
「そうだろうとも。[r]
[sp]なんたって僕の可愛い妹を君に渡すのだから幸せでなくてはね」[p]
[四条目閉じ]
[whosay name="華織" color="olivedrab"]
「ああ、君には敵わないな」[p]
;幸せな悩み？
[whosay name=文矢 color="#538a8a"]
「さて。これから訪れる、幸せな悩みについて、相談に乗ろうか？」[p]
[whosay name="華織" color="olivedrab"]
「そうだね。[r]
[四条笑顔]
[sp]けど、まずは、君がまた悩んでいることがあったら僕が助けるよ」[p]
[四条微笑み]
[whosay name=文矢 color="#538a8a"]
「そうだなぁ……」[p]
;子供が何人がいいとか、奥さんのプレゼントとか？

[四条退場準備 storage="bg/bg_enkaijou_rouka.jpg" time=600]
#
[暗転１]
;[chara_mod name="bg" storage="toumei.gif"]
新しく訪れる幸せな悩みについて、ふたりの話は、尽きることなく夜も更けていった。[p]
;=================================================================================_
*seen10
[eval exp="sf.event_sijyou_3_1 = 1"]
[イベントシーン終了]
[イベントシーン終了４]

@jump storage="test_sijyou.ks"
[s]
*window_close
[cm]
[chara_mod name="girl_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="girl_te" storage="toumei.gif" time=0]
[wait time=10]
;会話ウィンドウ消去
[chara_mod name="message_bg" storage="toumei.gif" time=1]
[wait time=10]
;機能ボタン消去
[clearfix]
[eval exp="sf.FButton='OFF'"]
;メッセージレイヤを非表示
@layopt layer=message0 page=fore visible=false
[layopt layer=27 visible=true]
[wait time=10]
[mtext text=&f.haikei_credit layer=27 size=18 x=20 y=10 color=#5b4513 fadeout=false in_delay=0]
[wait time=10]
[l]
;会話ウィンドウ表示
[chara_mod name="message_bg" storage=&f.message_storage time=1]
;機能ボタン表示
;セーブ等ボタン配置
[button name="message_auto" graphic="button_message_auto.png" role=auto]
[wait time=10]
[メッセージウィンドウ上ボタン表示]
[eval exp="sf.FButton='ON'"]
;メッセージレイヤを表示
[if exp="f.kaogura!='off'"]
[chara_mod name="girl_base" storage="girl/S/base.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_futuu.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
[endif]
@layopt layer=message0 page=fore visible=true
[current layer="message0"]
[freeimage layer = 27]
[wait time=10]
[return]
