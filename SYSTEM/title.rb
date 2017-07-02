# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#タイトル画面処理ソース

#タイトル画面用オブジェクト生成メソッド
def title_object

	#背景画像の読み込み
	title = Sprite.new(0, 0, Image.load("DATA/BG/TITLE.png"))

	#マウス用オブジェクト生成
	start = Sprite.new(500, 300, Image.new(100, 30, C_DEFAULT))
	load = Sprite.new(500, 350, Image.new(100, 30, C_DEFAULT))
	config = Sprite.new(500, 400, Image.new(100, 30, C_DEFAULT))
	quit = Sprite.new(500, 450, Image.new(100, 30, C_DEFAULT))

	return title, start, load, config, quit
end

#各種タイトルメニュー項目描画メソッド
def title_menu_draw(font)

	Window.draw_font(500, 300, "START", font)
	Window.draw_font(500, 350, "LOAD", font)
	Window.draw_font(500, 400, "CONFIG", font)
	Window.draw_font(500, 450, "QUIT", font)
end

#titleメソッドの定義
def title(mouse, font, flag, messagebox)

#各種オブジェクト生成
title, start, load, config, quit = title_object

	#描画ループ
	Window.loop do

		#マウス位置の取得
		mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

		#各種オブジェクト描画
		title.draw; mouse.draw;	start.draw; load.draw; config.draw; quit.draw

		#各種タイトルメニューの描画
		title_menu_draw(font)

		#メニュー選択処理メソッド
		case mouse
		
			#ゲームスタート
			when start
				if Input.mouse_push?(M_LBUTTON) then
					return flag = 1
				end

			#ロード画面へ
			when load
				if Input.mouse_push?(M_LBUTTON) then
					return flag = savedata_menu(font, mouse, messagebox, flag, 1, $lineno)
				end

			#コンフィグ画面へ
			when config
				if Input.mouse_push?(M_LBUTTON) then
					config(font, mouse, messagebox)
				end

			#ゲーム終了
			when quit
				if Input.mouse_push?(M_LBUTTON) then
					exit
				end
		end

		#エスケープキーで終了
		exit_message(messagebox)
	end
end