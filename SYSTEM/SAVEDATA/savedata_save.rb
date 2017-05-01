# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#セーブデータ保存処理ソース

#セーブデータ１にセーブ
def savedata1_save

	#ルート管理変数の書き込み（セーブデータの書き込み)
	File.write("DATA/SAVE/savedata1_choice.txt", $choice.to_s)

	#スクリプト管理変数の書き込み（セーブデータの書き込み)
	File.write("DATA/SAVE/savedata1_lineno.txt", $lineno.to_s)

	#スクリーンショットをリネーム
	File.rename("DATA/SAVE/savedata.png", "DATA/SAVE/savedata1.png")

end

#セーブデータ２にセーブ
def savedata2_save

	#ルート管理変数の書き込み（セーブデータの書き込み)
	File.write("DATA/SAVE/savedata2_choice.txt", $choice.to_s)

	#スクリプト管理変数の書き込み（セーブデータの書き込み)
	File.write("DATA/SAVE/savedata2_lineno.txt", $lineno.to_s)

	#スクリーンショットをリネーム
	File.rename("DATA/SAVE/savedata.png", "DATA/SAVE/savedata2.png")

end

#セーブデータ３にセーブ
def savedata3_save

	#ルート管理変数の書き込み（セーブデータの書き込み)
	File.write("DATA/SAVE/savedata3_choice.txt", $choice.to_s)

	#スクリプト管理変数の書き込み（セーブデータの書き込み)
	File.write("DATA/SAVE/savedata3_lineno.txt", $lineno.to_s)

	#スクリーンショットをリネーム
	File.rename("DATA/SAVE/savedata.png", "DATA/SAVE/savedata3.png")

end

#savedata_saveメソッドの定義
def savedata_save

	#フォントサイズ定義
	font = Font.new(24)

	#カーソルの初期値
	menu_y = 300

	#スクリーンショットの読込
	savedata1_screenshot = savedata1_screenshot_load()
	savedata2_screenshot = savedata2_screenshot_load()
	savedata3_screenshot = savedata3_screenshot_load()

	#描画ループ
	Window.loop do

		#各種ゲームメニューの描画
		Window.draw_font(100, 300, "セーブデータ１にセーブ", font)
		Window.draw_font(100, 350, "セーブデータ２にセーブ", font)
		Window.draw_font(100, 400, "セーブデータ３にセーブ", font)
		Window.draw_font(100, 450, "QUIT", font)

		#カーソルの描画
		Window.draw_font(50, menu_y, "□", font)

		#各種スクリーンショット描画
		savedata_screenshot_draw(savedata1_screenshot, savedata2_screenshot, savedata3_screenshot, menu_y)

		#キー操作関連
		menu_y = savedata_key(menu_y)

		#「セーブデータ１にセーブ」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 300 then
			#セーブデータ１にセーブ
			savedata1_save()
			break
		end

		#「セーブデータ２にセーブ」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 350 then
			#セーブデータ２にセーブ
			savedata2_save()
			break
		end

		#「セーブデータ３にセーブ」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 400 then
			#セーブデータ３にセーブ
			savedata3_save()
			break
		end

		#「QUIT」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 450 then
			break
		end

		#エスケープキーを押すとゲーム終了
		if Input.key_push?(K_ESCAPE) then
			exit
			break
		end
	end
end
