*replay_sijyou_2_2
*start
*test
[iscript]
$(".1_fore").empty();
[endscript]
[stopbgm]
;暗転プリロードサブルーチン
[call target=*2_2 storage="sijyou/preload_sijyou.ks"]
[call target=*start storage="macro_tati_sijyou.ks"]
[背景_チャリティ会場ダンスホール]
[イベントシーン構築ボタン無し版]
[主人公ポーズ通常]
[主人公通常]
[四条サイズ通常_羽織]
[四条憂い]
[wait time=10]
[プリロード画面消去]
[メッセージウィンドウ上ボタン表示]
[button fix=true target="seen_end" graphic="select_waku_x500.png" size=20 width="200" x=750 y=0 color=white]
;====================================================
*scene1
;------------------------------------
;[四条目伏2]
[chara_mod name="sijyou_me" storage="sijyou/me_fusi2.png" time=0]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「ええ。 少し、場酔いしたようで……」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[chara_mod name="girl_kuti" storage="girl/S/kuti_otyobo.png" time=0]
[wait time=10]
;↓効果：無し(通常) [主人公効果消]
[chara_mod name="girl_emo" storage="toumei.gif" time=0]
[wait time=10]
(はしゃぎすぎては、いけないわ)[p]
[autosave]
[whosay name="華織" color="olivedrab"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
「申し訳ございません、[r]
[sp]無理をさせてしまいましたね。 休みましょうか」[p]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
[四条退場]
;------------------------------------
#
[背景_チャリティ会場休憩所夜]
[表示準備 storage="bg/B4nFWraU42/sijyou_bazaar_kyukeijyo.jpg"]
[四条_顔up_ベース羽織]
;[四条_顔up_眉困り]
[chara_mod name="sijyou_up_mayu" storage="sijyou/mayu_komari.png" time=0]
[wait time=10]
;[四条_顔up_目伏2]
[chara_mod name="sijyou_up_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_顔up_口微笑み]
[chara_mod name="sijyou_up_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[表示開始 time=300]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
;休憩室[p]
華織様は、私を休憩室のソファに横たわらせ、心配そうに手を取った。[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「ごめんなさい。 [r]
[sp]私、今日の日をとても楽しみしていたのに」[p]
[if exp="sf.BGM=='ON'"]
;【BGM】星降る夜に（思い出/夢見るシーンに
[playbgm storage="yumemiru_hoshi.ogg" loop=true]
[eval exp="f.bgm_storage='yumemiru_hoshi.ogg'"]
[endif]
[whosay name="華織" color="olivedrab"] 
「謝らないで下さい。[sp]僕も少し浮かれてました。[r]
[sp]今はゆっくり休んで下さい」[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
（次に来た時は気をつけなくては……)[p]

#
;↓目：通常より大きめに開いた状態(驚き、好奇心、意思を見せる場面などに) [主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
恥ずかしさに身を縮めていると、[r]
窓の外から光とともに大きな音が鳴り響いた。[p]
;【SE】花火(打ち上げ：大)
[playse storage=hanabi_utiage_big.ogg loop=false ]
[暗転２ storage="bg/sijyou_hanabi2_1.jpg"]
;[四条_顔up_眉下げ]
[chara_mod name="sijyou_up_mayu" storage="sijyou/mayu_sage.png" time=0]
[wait time=10]
[暗転２終了]
驚いて見上げれば、大輪の花火が、陰った空を[r]
煌びやかに照らしていた。[p]

[whosay name="華織" color="olivedrab"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
「花火、ですか。[sp]昔、[名前]さんと興じましたね」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「そうですね」[p]
#
;↓眉：通常 [主人公眉通常]
[chara_mod name="girl_mayu" storage="girl/S/mayu_futuu.png" time=0]
[wait time=10]
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
;↓口：通常 [主人公口通常]
[chara_mod name="girl_kuti" storage="girl/S/kuti_futuu.png" time=0]
[wait time=10]
あの時の華織様の横顔が忘れずに心に残っている。[p]
[cm]
;---------------------------------------------
;全画面表示
@layopt layer=fix visible=false
[wait time=50]
;メッセージレイヤを全画面用に設定変更
[position left=200 width=700 height=530 top=110 page=fore margint="50"]
[wait time=50]
[暗転２ storage="bg/sijyou_hanabi1.jpg"]
@layopt layer=message0 visible=true
[current layer="message0"]
[font color=white size=27]
;---------------------------------------------
;背景 線香花火
[背景_線香花火]
花火に照らされた華織様の横顔。[p]
;【SE】花火(線香花火)
[playse storage=hanabi_senkou.ogg loop=false ]
ふとした瞬間が、とても綺麗な華織様への[r]
届かないはずだった淡い思い。[p]
[背景_チャリティ会場休憩所夜]
;------------------------------------------------
[resetfont]
@layopt layer=message0 visible=false
[position layer=message0 left=240 width=700 height=170 top=415 page=fore margint="50"]
@layopt layer=message0 visible=true
[current layer="message0"]
@layopt layer=message0 visible=true
;------------------------------------------------
;[四条_顔up_目伏2]
[chara_mod name="sijyou_up_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_顔up_口微笑み]
[chara_mod name="sijyou_up_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[wait time=10]
[主人公目閉じ]
[wait time=10]
[暗転２終了]

[whosay name=&sf.girl_namae color="#cf5a7f"]
(私は華織様に憧れて、華織様のように）[p]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
(いえ、華織様に似合うような淑女になりたかった……)[p]
[autosave]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓目：伏目 [主人公目伏]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「私は、華織様に似合う大人の女性になれたでしょうか？」[p]
;初めてだから場酔いくらいある…と思えない心情を描き
[whosay name=&sf.girl_namae color="#cf5a7f"]
（華織様に御心配をお掛けしてしまった……。[r]
[sp]きっと、大人の淑女なら[r]
[sp]華やかな場所でも悠然と振舞えるはずなのに）[p]
#
今日の失敗を忘れられず、私は華織様の手を力強く握った。 [p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_up_kuti" storage="sijyou/kuti_ake.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
「お気になさらないで下さい」[p]
[whosay name="華織" color="olivedrab"]
[chara_mod name="sijyou_up_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="girl_me" storage="girl/S/me_fusi1.png" time=0]
[wait time=10]
「[名前]さんは、そのままでも可愛らしい方ですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
[chara_mod name="girl_kuti" storage="girl/S/kuti_ake.png" time=0]
[wait time=10]
「いいえ、私はあの花火のように華やかな女性になりたいのです」[p]
[whosay name="華織" color="olivedrab"] 
;↓口：ムッと不満や哀しみ、耐える感じの表情に [主人公口ムッ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_mu.png" time=0]
[wait time=10]
「[名前]さん。[sp]昔は華やかな大筒花火の方がすきでした」[p]
[whosay name="華織" color="olivedrab"] 
;[四条_顔up_目閉じ]
[chara_mod name="sijyou_up_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
「ですが、[r]
[sp][名前]さん達に誘われて初めて興じた線香花火はとても印象的で」[p]
[whosay name="華織" color="olivedrab"]
;[四条_顔up_目にこ]
[chara_mod name="sijyou_up_me" storage="sijyou/me_niko.png" time=0]
[wait time=10]
「僕は、線香花火も好きになりましたよ。[r]
[sp]暗闇を照らしてくれる、可憐な花のように思えませんか？」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
「そうでしょうか……」[p]
[autosave]
[whosay name="華織" color="olivedrab"]
;[四条_顔up_目伏2]
[chara_mod name="sijyou_up_me" storage="sijyou/me_fusi2.png" time=0]
[wait time=10]
;[四条_顔up_頬染め]
[chara_mod name="sijyou_up_emo" storage="sijyou/emo_hohosome.png" time=0]
[wait time=10]
「大輪の花も素敵ですが、[r]
[sp]側で輝いてくれる小さな花をまた愛でたいのです」[p]
#
;↓眉：下がり眉 (柔和な表情、驚きなどに向きます) [主人公眉下げ]
[chara_mod name="girl_mayu" storage="girl/S/mayu_yowa.png" time=0]
[wait time=10]
;↓目：通常より大きめに開いた状態[主人公目大]
[chara_mod name="girl_me" storage="girl/S/me_ake.png" time=0]
[wait time=10]
;↓効果：頬染め [主人公頬染め]
[chara_mod name="girl_emo" storage="girl/S/emo_hohosome.png" time=0]
[wait time=10]
華織様は、そっと頭を撫で、耳元で囁いた。[p]
[whosay name="華織" color="olivedrab"]
;[四条_顔up_目閉じ]
[chara_mod name="sijyou_up_me" storage="sijyou/me_toji.png" time=0]
[wait time=10]
;[四条_顔up_口微笑み]
[chara_mod name="sijyou_up_kuti" storage="sijyou/kuti_hohoemi.png" time=0]
[wait time=10]
「でも、今日の[名前]さんは、[r]
[sp]いつもと違って華やかで、[r]
[sp]目にいれても惜しくないほどに美しかったですよ」[p]
[whosay name=&sf.girl_namae color="#cf5a7f"]
;↓眉：困り [主人公眉困り]
[chara_mod name="girl_mayu" storage="girl/S/mayu_komari.png" time=0]
[wait time=10]
;↓目：柔和な伏目 [主人公目伏柔]
[chara_mod name="girl_me" storage="girl/S/me_fusi.png" time=0]
[wait time=10]
;↓口：ほほえみ [主人公口ほほえみ]
[chara_mod name="girl_kuti" storage="girl/S/kuti_hohoemi.png" time=0]
[wait time=10]
「……」[p]
#
;↓目：閉じた状態 [主人公目閉]
[chara_mod name="girl_me" storage="girl/S/me_toji.png" time=0]
[wait time=10]
どうしてか騒がしいはずの花火の音が聞こえず、[r]
胸の鼓動だけが鳴り響いていた。[p]

*seen_end
;クリアフラグ
[eval exp="sf.event_sijyou_2_2_bazar = 1"]
[イベントシーン終了]


[if exp="f.okeiko_gamen == true"]
@jump storage="event.ks" target=*event_owari
[else]
@jump storage="test_sijyou.ks"
[endif]
[s]

;------------------------------------------------
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
