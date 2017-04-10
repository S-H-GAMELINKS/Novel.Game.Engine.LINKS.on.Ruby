# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#タイトル処理ソース

#DXRubyの読み込み
require 'dxruby'

#コンフィグ処理の呼び出し
require_relative 'CONFIG/config'

#ロード処理処理の呼び出し
require_relative 'SAVE_LOAD/savedata_load'

#titleメソッドの定義
def title

#メニューカーソルの初期値
menu_y = 300

#フォントサイズ
font = Font.new(24)

#背景画像の読み込み
title_background = Image.load("DATA/BG/TITLE.png")

#描画ループ
Window.loop do

	#背景描画
	Window.draw(0, 0, title_background)

	#各種タイトルメニューの描画
	Window.draw_font(500, 300, "START", font)
	Window.draw_font(500, 350, "LOAD", font)
	Window.draw_font(500, 400, "CONFIG", font)
	Window.draw_font(500, 450, "QUIT", font)

	#カーソルの描画
	Window.draw_font(450, menu_y, "□", font)

	#カーソルのキー操作（↑キー）
	if Input.key_push?(K_UP) then
		menu_y = menu_y - 50

		if menu_y <= 250 then
			menu_y = 450
		end
	end

	#カーソルのキー操作（↓キー）
	if Input.key_push?(K_DOWN) then
		menu_y = menu_y + 50

		if menu_y >= 500 then
			menu_y = 300
		end
	end

	#STARTを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 300 then

		#ルート管理変数へ数値を渡し、ループを抜ける
		$choice = 1
		break
	end

	#LOADを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 350 then

		#ロード処理
		savedata_load()
	end

	#CONFIGを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 400 then
		
		#コンフィグ画面の呼び出し
		config()
	end

	#QUITを選択した際の処理
	if Input.key_push?(K_RETURN) && menu_y == 450 then
		Window.close
		exit
		break
	end

	#エスケープキーで終了
	if Input.key_push?(K_ESCAPE) then
		exit
		break
	end

end

end
