# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニュー処理ソース

#DXRubyの読み込み
require 'dxruby'

#セーブデータ１のロード
def savedata1_load

	#ルート管理変数への代入（セーブデータの読み込み)
	$choice = File.open("DATA/SAVE/savedata1_choice.txt", "r").read.to_i

	#スクリプト管理変数への代入（セーブデータの読み込み)
	$lineno = File.open("DATA/SAVE/savedata1_lineno.txt", "r").read.to_i

end

#セーブデータ２のロード
def savedata2_load

	#ルート管理変数への代入（セーブデータの読み込み)
	$choice = File.open("DATA/SAVE/savedata2_choice.txt", "r").read.to_i

	#スクリプト管理変数への代入（セーブデータの読み込み)
	$lineno = File.open("DATA/SAVE/savedata2_lineno.txt", "r").read.to_i

end

#セーブデータ３のロード
def savedata3_load

	#ルート管理変数への代入（セーブデータの読み込み)
	$choice = File.open("DATA/SAVE/savedata3_choice.txt", "r").read.to_i

	#スクリプト管理変数への代入（セーブデータの読み込み)
	$lineno = File.open("DATA/SAVE/savedata3_lineno.txt", "r").read.to_i

end

#savedata_loadメソッドの定義
def savedata_load

#フォントサイズ定義
font = Font.new(24)

#カーソルの初期値
menu_y = 300

#各種素材の読み込み	
savedata1_screenshot = Image.load("DATA/SAVE/savedata1.png")
savedata2_screenshot = Image.load("DATA/SAVE/savedata2.png")
savedata3_screenshot = Image.load("DATA/SAVE/savedata3.png")

#描画ループ
Window.loop do

	#各種ゲームメニューの描画
	Window.draw_font(100, 300, "セーブデータ１をロード", font)
	Window.draw_font(100, 350, "セーブデータ２をロード", font)
	Window.draw_font(100, 400, "セーブデータ３をロード", font)
	Window.draw_font(100, 450, "QUIT", font)

	#カーソルの描画
	Window.draw_font(50, menu_y, "□", font)

	if menu_y == 300 then

		#セーブデータ画像の描画
		Window.draw_scale(100, -100, savedata1_screenshot, 0.5, 0.5, 1)
	end

	if menu_y == 350 then

		#セーブデータ画像の描画
		Window.draw_scale(100, -100, savedata2_screenshot, 0.5, 0.5, 1)
	end

	if menu_y == 400 then

		#セーブデータ画像の描画
		Window.draw_scale(100, -100, savedata3_screenshot, 0.5, 0.5, 1)
	end

	#カーソルのキー操作（↑キー）
	if Input.key_push?(K_UP) then
		menu_y -= 50

		if menu_y <= 250 then
			menu_y = 450
		end
	end

	#カーソルのキー操作（↓キー）
	if Input.key_push?(K_DOWN) then
		menu_y += 50

		if menu_y >= 500 then
			menu_y = 300
		end
	end

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
