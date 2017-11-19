;マクロ及び立ち絵の自然な退場・登場時に◆B4nFWraU42さん作スクリプトを使用させていただきました。ありがとうございます
;黒田立ち絵は初期の試行段階であるため他キャラと仕様が異なっていました(エモはベースとセットにしておりました。
;その点で色々と悩ませてしまったと思います。そのなかでのまとめをありがとうございました。
;このたび、他キャラと同等の"表情鑑賞"を可能とする目的で、新たに他キャラの仕様にあわせた画像パーツ出力を行い再設定しました(◆jsYiJcqRkk
;==============================
;layer8：他キャラbase（のっぺらぼう）
;layer9:他キャラ口
;layer10:他キャラ目
;layer11:他キャラ眉
;layer12:他キャラエモーション（汗）
;layer13:空(予備
;==============================

*start
;◆◆立ち絵画像サイズ：(x)1500x(y)1988を変数に入力。最大使用サイズ確定後(全キャラの立ち絵が揃ってから調整予定)はそのサイズで立ち絵画像再出力予定。その際は↓の2箇所を新サイズに合わせて変更すれば反映される予定
[eval exp="f.kuroda_moto_width=673"]
[eval exp="f.kuroda_moto_height=1335"]
;◆立ち絵【通常サイズ】のwidth、height、left、top設定
[eval exp="f.kuroda_tuujou_width=f.kuroda_moto_width*0.58"]
[eval exp="f.kuroda_tuujou_height=f.kuroda_moto_height*0.58"]
[eval exp="f.kuroda_tuujou_left=280"]
[eval exp="f.kuroda_tuujou_top=50"]
;◆立ち絵【サイズ：遠くに】のwidth、height、left、top設定
[eval exp="f.kuroda_tonari_width=f.kuroda_tuujou_width*0.57*1.3"]
[eval exp="f.kuroda_tonari_height=f.kuroda_tuujou_height*0.57*1.3"]
[eval exp="f.kuroda_tonari_left=330"]
[eval exp="f.kuroda_tonari_top=65"]
;◆立ち絵【サイズ：近くに】のwidth、height、left、top設定
[eval exp="f.kuroda_up_width=f.kuroda_tuujou_width*1.3"]
[eval exp="f.kuroda_up_height=f.kuroda_tuujou_height*1.3"]
[eval exp="f.kuroda_up_left=220"]
[eval exp="f.kuroda_up_top=50"]

;画像仮表示【初登場時のみ仮に透明画像で表示。chara_new使用。後はマクロで切り替え】
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="kuroda_base" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=9 name="kuroda_emo" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=10 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=11 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=12 name="kuroda_mayu" time=0]
[wait time=10]

;◆[黒田サイズ遠くに storage="bg/bg_machi.jpg"]　デフォルトは町画像
[macro name="黒田サイズ遠くに"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="kuroda_base" storage="toumei.gif" width=&f.kuroda_tonari_width height=&f.kuroda_tonari_height]
[chara_show left=&f.kuroda_tonari_left top=&f.kuroda_tonari_top layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif" width=&f.kuroda_tonari_width height=&f.kuroda_tonari_height]
[chara_show left=&f.kuroda_tonari_left top=&f.kuroda_tonari_top layer=9 name="kuroda_emo" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif" width=&f.kuroda_tonari_width height=&f.kuroda_tonari_height]
[chara_show left=&f.kuroda_tonari_left top=&f.kuroda_tonari_top layer=10 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif" width=&f.kuroda_tonari_width height=&f.kuroda_tonari_height]
[chara_show left=&f.kuroda_tonari_left top=&f.kuroda_tonari_top layer=11 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif" width=&f.kuroda_tonari_width height=&f.kuroda_tonari_height]
[chara_show left=&f.kuroda_tonari_left top=&f.kuroda_tonari_top layer=12 name="kuroda_mayu" time=0]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]

[endmacro]

;◆[黒田サイズ近くに storage="bg/bg_machi.jpg"]　デフォルトは町画像
[macro name="黒田サイズ近くに"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="kuroda_base" storage="toumei.gif" width=&f.kuroda_up_width height=&f.kuroda_up_height]
[chara_show left=&f.kuroda_up_left top=&f.kuroda_up_top layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif" width=&f.kuroda_up_width height=&f.kuroda_up_height]
[chara_show left=&f.kuroda_up_left top=&f.kuroda_up_top layer=9 name="kuroda_emo" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif" width=&f.kuroda_up_width height=&f.kuroda_up_height]
[chara_show left=&f.kuroda_up_left top=&f.kuroda_up_top layer=10 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif" width=&f.kuroda_up_width height=&f.kuroda_up_height]
[chara_show left=&f.kuroda_up_left top=&f.kuroda_up_top layer=11 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif" width=&f.kuroda_up_width height=&f.kuroda_up_height]
[chara_show left=&f.kuroda_up_left top=&f.kuroda_up_top layer=12 name="kuroda_mayu" time=0]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]


;◆[黒田サイズ通常 storage="bg/bg_machi.jpg"]　デフォルトは町画像
[macro name="黒田サイズ通常"]
@layopt layer=13 visible=true
[image name="jyunbi" storage=%storage|bg/bg_machi.jpg left=1 top=1 layer=%layer|13 zindex=%zindex|1 visible=true time=%time|30]
[wait time=50]
[freeimage layer = 8]
[freeimage layer = 9]
[freeimage layer = 10]
[freeimage layer = 11]
[freeimage layer = 12]
[chara_new name="kuroda_base" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=8 name="kuroda_base" time=0]
[wait time=10]
[chara_new name="kuroda_emo" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=9 name="kuroda_emo" time=0]
[wait time=10]
[chara_new name="kuroda_kuti" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=10 name="kuroda_kuti" time=0]
[wait time=10]
[chara_new name="kuroda_me" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=11 name="kuroda_me" time=0]
[wait time=10]
[chara_new name="kuroda_mayu" storage="toumei.gif" width=&f.kuroda_tuujou_width height=&f.kuroda_tuujou_height]
[chara_show left=&f.kuroda_tuujou_left top=&f.kuroda_tuujou_top layer=12 name="kuroda_mayu" time=0]
[wait time=10]
[freeimage layer=13 time=50]
[wait time=50]
[endmacro]

;==============================================================================
;◆立ち絵：衣装
;◆kuroda_pose_01[黒田ベース着物]
[macro name="黒田ベース着物"]
[chara_mod name="kuroda_base" storage="kuroda/o_base_kimono.png" time=0]
[wait time=10]
[endmacro]
;◆kuroda_pose_02[黒田ベース羽織]
[macro name="黒田ベース羽織"]
[chara_mod name="kuroda_base" storage="kuroda/o_base_haori.png" time=0]
[wait time=10]
[endmacro]


;==============================================================================
;◆立ち絵：表情セット
;◆kuroda_face_01 [黒田通常]
[macro name="黒田通常"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_02 [黒田伏目]
[macro name="黒田伏目"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_03 [黒田憂い]黒田しょんぼり
[macro name="黒田憂い"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_04 [黒田困り]
[macro name="黒田困り"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_05 [黒田困り微笑み]
[macro name="黒田困り微笑み"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_komari.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_06 [黒田微笑み]
[macro name="黒田微笑み"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_07 [黒田笑顔]
[macro name="黒田笑顔"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_niko.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_08 [黒田驚き]
[macro name="黒田驚き"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_odoroki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_ooake.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_09 [黒田真剣]
[macro name="黒田真剣"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_tuyoki.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_10 [黒田照れ]
[macro name="黒田照れ"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_sage.png" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="kuroda/o_me_ake.png" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_hohoemi.png" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="kuroda/o_emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_face_11 []


;◆kuroda_face_21 [黒田目パチ1回]
[macro name="黒田目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[endmacro]

;◆kuroda_face_22 [黒田伏目パチ1回]
[macro name="黒田伏目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=50]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[endmacro]
;◆kuroda_face_23 [黒田閉目パチ1回] 黒田目閉じ
[macro name="黒田閉目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[endmacro]

;◆kuroda_face_24 [黒田目を開く] 
[macro name="黒田目を開く"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[endmacro]

;◆kuroda_face_25 [黒田目を閉じる] 
[macro name="黒田目を閉じる"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[endmacro]

;◆kuroda_face_26 [黒田閉伏目パチ1回]
[macro name="黒田閉伏目パチ1回"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=30]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[endmacro]


;==============================================================================
;◆立ち絵眉:
;◆kuroda_mayu_01 [黒田眉通常]
[macro name="黒田眉通常 "]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_futuu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_mayu_02 [黒田眉下げ]
[macro name="黒田眉下げ"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_sage.png" time=0]
[wait time=10]
[endmacro] 

;◆kuroda_mayu_03 [黒田眉困り]
[macro name="黒田眉困り"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_komari.png" time=0]
[wait time=10]
[endmacro] 

;◆kuroda_mayu_04 [黒田眉強気]
[macro name="黒田眉強気"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_tuyoki.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_mayu_05 [黒田眉苦悩]
[macro name="黒田眉苦悩"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_kurusige.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_mayu_06 [黒田眉驚き]
[macro name="黒田眉驚き"]
[chara_mod name="kuroda_mayu" storage="kuroda/o_mayu_odoroki.png" time=0]
[wait time=10]
[endmacro]

;==============================================================================
;◆立ち絵目:
;◆kuroda_me_01 [黒田目通常]
[macro name="黒田目通常"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_futuu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_02 [黒田目大]???
[macro name="黒田目大"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_ake.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_03 [黒田目にこ]
[macro name="黒田目にこ"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_niko.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_04 [黒田目伏]
[macro name="黒田目伏"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi1.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_05 [黒田目伏2]
[macro name="黒田目伏2"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_fusi2.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_06 [黒田目閉じ]
[macro name="黒田目閉じ "]
[chara_mod name="kuroda_me" storage="kuroda/o_me_toji.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_07 [黒田横目]
[macro name="黒田横目"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_yoko.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_08 [黒田横伏目]
[macro name="黒田横伏目"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_yokofusi.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_09 [黒田横伏目2]
[macro name="黒田横伏目2"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_yokofusi_kaisou.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_me_10 [黒田横伏目3]
[macro name="黒田横伏目3"]
[chara_mod name="kuroda_me" storage="kuroda/o_me_yokofusi_kangae.png" time=0]
[wait time=10]
[endmacro]

;==============================================================================

;◆立ち絵口:
;◆kuroda_kuti_01 [黒田口通常]
[macro name="黒田口通常"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_futuu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_kuti_02 [黒田口開]
[macro name="黒田口開"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_ake.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_kuti_03 [黒田口微笑み]
[macro name="黒田口微笑み"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_hohoemi.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_kuti_04 [黒田口笑顔]
[macro name="黒田口笑顔"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_warau.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_kuti_05 [黒田口笑顔大]!!!!!
;[macro name="黒田口笑顔大"]
;ありません？→はい。笑顔大は製作中に"この場面は小さく笑う方が合っている"といったご意見をいただいた時以降に発注・実装したもので、黒田の時代にはありませんでした(◆jsYiJcqRkk
;[wait time=10]
;[endmacro]

;◆kuroda_kuti_05 [黒田口驚き]
[macro name="黒田口驚き"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_ooake.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_kuti_06 [黒田口ムッ]
[macro name="黒田口ムッ"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_mu.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_kuti_07 [黒田口ムッ2]
[macro name="黒田口ムッ2"]
[chara_mod name="kuroda_kuti" storage="kuroda/o_kuti_ugugu.png" time=0]
[wait time=10]
[endmacro]

;====================================エモはコメント中==========================================
;◆kuroda_emo_01 [黒田効果消]！！！
;ベースとセットになっている？→はい。当時は試行的にベースとセットで出力していました。このたび改めてエモのみ切り離して出力しました(◆jsYiJcqRkk
[macro name="黒田効果消"]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]

;◆kuroda_emo_02 [黒田頬染め]
[macro name="黒田頬染め"]
[chara_mod name="kuroda_emo" storage="kuroda/o_emo_hohosome.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_emo_03 [黒田青ざめ]
[macro name="黒田青ざめ"]
[chara_mod name="kuroda_emo" storage="kuroda/o_emo_aozame.png" time=0]
[wait time=10]
[endmacro]

;◆kuroda_emo_04 [黒田汗]
[macro name="黒田汗"]
[chara_mod name="kuroda_emo" storage="kuroda/o_emo_ase.png" time=0]
[wait time=10]
[endmacro]

;立ち絵表示[黒田退場]
[macro name="黒田退場"]
[chara_mod name="kuroda_base" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_mayu" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_me" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_kuti" storage="toumei.gif" time=0]
[wait time=10]
[chara_mod name="kuroda_emo" storage="toumei.gif" time=0]
[wait time=10]
[endmacro]
[return]