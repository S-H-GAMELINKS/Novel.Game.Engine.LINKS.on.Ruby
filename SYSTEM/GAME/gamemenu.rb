# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニュー処理ソース

#gamemenuメソッドの定義
def gamemenu

	#カーソルの初期値
	menu_y = 200

	#フォントサイズ定義
	font = Font.new(24)

	#描画ループ
	Window.loop do

		#各種ゲームメニューの描画
		Window.draw_font(500, 200, "TITLE", font)
		Window.draw_font(500, 250, "SAVE", font)
		Window.draw_font(500, 300, "LOAD", font)
		Window.draw_font(500, 350, "DELETE", font)
		Window.draw_font(500, 400, "CONFIG", font)
		Window.draw_font(500, 450, "QUIT", font)

		#カーソルの描画
		Window.draw_font(450, menu_y, "□", font)

		#カーソルのキー操作関連
		menu_y = gamemenu_key(menu_y)

		#各種メニュー画面選択時の処理
		gamemenu_choice(menu_y)

		#QUITを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 450 then
			break
		end

		#変数$choiceが0ならばループを抜ける
		if $choice == 0 then
			break
		end
		
		#エスケープキーを押すとゲーム終了
		if Input.key_push?(K_ESCAPE) then
			exit
		end
	end
end
