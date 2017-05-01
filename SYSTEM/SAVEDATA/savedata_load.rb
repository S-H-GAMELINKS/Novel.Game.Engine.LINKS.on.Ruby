# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニュー処理ソース

#セーブデータ１のロード
def savedata1_load


	savedata_exist = savedata1_check()
	
	if savedata_exist == 1 then
		#ルート管理変数への代入（セーブデータの読み込み)
		$choice = File.open("DATA/SAVE/savedata1_choice.txt", "r").read.to_i

		#スクリプト管理変数への代入（セーブデータの読み込み)
		$lineno = File.open("DATA/SAVE/savedata1_lineno.txt", "r").read.to_i
	end
end

#セーブデータ２のロード
def savedata2_load

	savedata_exist = savedata2_check()
	
	if savedata_exist == 1 then
		#ルート管理変数への代入（セーブデータの読み込み)
		$choice = File.open("DATA/SAVE/savedata2_choice.txt", "r").read.to_i

		#スクリプト管理変数への代入（セーブデータの読み込み)
		$lineno = File.open("DATA/SAVE/savedata2_lineno.txt", "r").read.to_i
	end
end

#セーブデータ３のロード
def savedata3_load

	savedata_exist = savedata3_check()
	
	if savedata_exist == 1 then
		#ルート管理変数への代入（セーブデータの読み込み)
		$choice = File.open("DATA/SAVE/savedata3_choice.txt", "r").read.to_i

		#スクリプト管理変数への代入（セーブデータの読み込み)
		$lineno = File.open("DATA/SAVE/savedata3_lineno.txt", "r").read.to_i
	end
end

#savedata_loadメソッドの定義
def savedata_load

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
		Window.draw_font(100, 300, "セーブデータ１をロード", font)
		Window.draw_font(100, 350, "セーブデータ２をロード", font)
		Window.draw_font(100, 400, "セーブデータ３をロード", font)
		Window.draw_font(100, 450, "QUIT", font)

		#カーソルの描画
		Window.draw_font(50, menu_y, "□", font)

		#各種スクリーンショット描画
		savedata_screenshot_draw(savedata1_screenshot, savedata2_screenshot, savedata3_screenshot, menu_y)

		#キー操作関連
		menu_y = savedata_key(menu_y)

		#「セーブデータ１をロード」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 300 then

			#セーブデータ１のロード
			savedata1_load()
			break
		end

		#「セーブデータ２をロード」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 350 then

			#セーブデータ２のロード
			savedata2_load()
			break
		end

		#「セーブデータ３をロード」を選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 400 then

			#セーブデータ３のロード
			savedata3_load()
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
