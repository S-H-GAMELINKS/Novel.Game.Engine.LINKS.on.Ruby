# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#セーブデータ削除処理ソース

#セーブデータ１を削除
def savedata1_delete

	savedata_exist = savedata1_check()
	
	if savedata_exist == 1 then
		#セーブデータ１の削除
		File.delete("DATA/SAVE/savedata1_choice.txt")
		File.delete("DATA/SAVE/savedata1_lineno.txt")
		File.delete("DATA/SAVE/savedata1.png")
	end
end

#セーブデータ２を削除
def savedata2_delete

	savedata_exist = savedata2_check()
	
	if savedata_exist == 1 then
		#セーブデータ２の削除
		File.delete("DATA/SAVE/savedata2_choice.txt")
		File.delete("DATA/SAVE/savedata2_lineno.txt")
		File.delete("DATA/SAVE/savedata2.png")
	end
end

#セーブデータ３を削除
def savedata3_delete

	savedata_exist = savedata3_check()
	
	if savedata_exist == 1 then
		#セーブデータ３の削除
		File.delete("DATA/SAVE/savedata3_choice.txt")
		File.delete("DATA/SAVE/savedata3_lineno.txt")
		File.delete("DATA/SAVE/savedata3.png")
	end
end

#savedata_saveメソッドの定義
def savedata_delete

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
		Window.draw_font(100, 300, "セーブデータ１を削除", font)
		Window.draw_font(100, 350, "セーブデータ２を削除", font)
		Window.draw_font(100, 400, "セーブデータ３を削除", font)
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
			savedata1_delete()
			break
		end

		#「セーブデータ２にセーブ」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 350 then
			#セーブデータ２にセーブ
			savedata2_delete()
			break
		end

		#「セーブデータ３にセーブ」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 400 then
			#セーブデータ３にセーブ
			savedata3_delete()
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
