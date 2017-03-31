# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニュー処理ソース

#DXRubyの読み込み
require 'dxruby'

#セーブ処理処理の呼び出し
require_relative 'savedata_save'

#ロード処理処理の呼び出し
require_relative 'savedata_load'

#gamemenuメソッドの定義
def gamemenu

#フォントサイズ定義
font = Font.new(24)

#カーソルの初期値
menu_y = 300

#背景画像の読み込み
title_background = Image.load("DATA/BG/TITLE.png")

#描画ループ
Window.loop do

	#背景画像の描画
	Window.draw(0, 0, title_background)

	#各種ゲームメニューの描画
	Window.draw_font(500, 300, "SAVE", font)
	Window.draw_font(500, 350, "LOAD", font)
	Window.draw_font(500, 400, "QUIT", font)

	#カーソルの描画
	Window.draw_font(450, menu_y, "□", font)

	#カーソルのキー操作（↑キー）
	if Input.key_push?(K_UP) then
		menu_y -= 50

		if menu_y <= 250 then
			menu_y = 400
		end
	end

	#カーソルのキー操作（↓キー）
	if Input.key_push?(K_DOWN) then
		menu_y += 50

		if menu_y >= 450 then
			menu_y = 300
		end
	end

	#SAVEを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 300 then

		#セーブ処理
		savedata_save()
		break
	end

	#LOADを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 350 then

		#ロード処理
		savedata_load()
		break
	end

	#QUITを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 400 then
		exit
		break
	end

	#エスケープキーを押すとゲーム終了
	if Input.key_push?(K_ESCAPE) then
		exit
		break
	end

end

end
