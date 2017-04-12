# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニュー処理ソース

#gamemenuメソッドの定義
def gamemenu

	#カーソルの初期値
	menu_y = 300

	#フォントサイズ定義
	font = Font.new(24)

	#描画ループ
	Window.loop do

		#各種ゲームメニューの描画
		Window.draw_font(500, 250, "TITLE", font)
		Window.draw_font(500, 300, "SAVE", font)
		Window.draw_font(500, 350, "LOAD", font)
		Window.draw_font(500, 400, "CONFIG", font)
		Window.draw_font(500, 450, "QUIT", font)

		#カーソルの描画
		Window.draw_font(450, menu_y, "□", font)


		#カーソルのキー操作（↑キー）
		if Input.key_push?(K_UP) then
			menu_y -= 50

			if menu_y <= 200 then
				menu_y = 450
			end
		end

		#カーソルのキー操作（↓キー）
		if Input.key_push?(K_DOWN) then
			menu_y += 50

			if menu_y >= 500 then
				menu_y = 250
			end
		end

		#TITLEを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 250 then
			$choice = 0
			break
		end

		#SAVEを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 300 then

			#セーブ処理
			savedata_save()
		end

		#LOADを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 350 then

			#ロード処理
			savedata_load()
			break
		end

		#CONFIGを選んだ際の処理
		if Input.key_push?(K_RETURN) && menu_y == 400 then

			#コンフィグ処理
			config()
		end

		#QUITを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 450 then
			break
		end

		#エスケープキーを押すとゲーム終了
		if Input.key_push?(K_ESCAPE) then
			exit
		end
	end
end
