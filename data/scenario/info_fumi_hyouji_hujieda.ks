﻿;======================================================================================
;◆◆「情報」藤枝：手紙表示部分処理◆◆
;======================================================================================
*fumi_hyouji_hujieda
[if exp="f.event_hujieda[1] != 1"]
@jump target=&tf.fumi_hyouji_owari_target
[endif]
;◆未読の表示
[if exp="f.midoku_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] > 0"]
	[ptext name="list" text="未読" layer=28 size=15 x=510 y=&f.fumi_hujieda_midoku_y color=mediumslateblue bold=bold]
[endif]

;◆返信ボタンを必要時に表示
[if exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 1"]
	[ptext name="list" text="返信済" layer=28 size=15 x=840 y=&f.fumi_hujieda_midoku_y color=mediumslateblue bold=bold]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0 && f.hujieda_au != 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1)||f.okeiko_month == 10 || f.okeiko_month == 11 || f.okeiko_month == 12 || f.okeiko_month == 1 || f.okeiko_month == 2 || f.okeiko_month == 3)"]
;9月2週以降ルート外の場合、返信していない手紙の「返信」ボタン部分には何も表示しない
[endif]
[if exp="f.hujieda_au == 1 && ((f.okeiko_month == 9 && f.okeiko_week != 1) || f.okeiko_month == 10 || (f.okeiko_month == 2 && (f.okeiko_week == 3 || f.okeiko_week == 4)) || f.okeiko_month == 3) && f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == 0"]
;藤枝文通可能期間(返信ボタン表示)は個別ルートに入った後、9月2週～10月4週と2月3週以降。11月1週(発覚)～2月2週は表示しない
	[eval exp="f.fumi_henji_storage='fumi_henji_furiwake_'+[f.fumi_hairetsu1]+'.ks'"]
	[eval exp="f.fumi_henji_target='*fumi_henji'+'_'+[f.fumi_hairetsu1]+'_'+[f.fumi_hairetsu2]"]
	[glink name="list" storage=&f.fumi_henji_storage target=&f.fumi_henji_target text="返信" exp="f.fumi_henjityu=1" size=16 width="32" x=850 y=&f.fumi_hujieda_y color=white]
[elsif exp="f.hensin_list_hairetsu[f.fumi_hairetsu1][f.fumi_hairetsu2] == -1"]
;返信配列が-1の際も何も表示しない(藤枝の鳩からの手紙時に使用)
[endif]
;◆手紙タイトルを並べて表示
[if exp="f.fumi_hujieda_number == 0"]
[else]
	[glink name="list" storage="hujieda/hujieda_fumi.ks" target=&f.fumi_list_hujieda_target[f.list_count] text=&f.fumi_list_hujieda_title[f.list_count] size=16 width="270" x=545 y=&f.fumi_hujieda_y color=white]
[endif]
@jump storage="info_hujieda.ks" target=&tf.fumi_hyouji_owari_target

