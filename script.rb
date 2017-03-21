# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#スクリプト処理ソース

#DXRubyの読み込み
require 'dxruby'

#gamemenuメソッドの読み込み
require_relative 'gamemenu'

#scriptメソッドの定義
def script

#フォントサイズの設定
font = Font.new(26)

#各種素材の読み込み	
bg01 = Image.load("DATA/BG/BG01.png")
bg02 = Image.load("DATA/BG/BG02.png")
char01 = Image.load("DATA/CHAR/CHAR01.png")
char02 = Image.load("DATA/CHAR/CHAR02.png")
se01 = Sound.new("DATA/SE/SE01.wav")
bgm01 = Sound.new("DATA/BGM/BGM01.wav")
	
#描画用変数の定義
bg = Image.new(640, 480, [0, 0, 0, 0])
char = Image.new(640, 480, [0, 0, 0, 0])
bgm = 0
se = 0

#ウインドウ画像作成
window = Image.new(640, 200, [255, 0, 0, 0])

#以下、テキストデータの読み込み
if $choice == 1 then
	text = File.open("DATA/STR/MAIN.txt", "r")
	root = 1
end

if $choice == 2 then
	text = File.open("DATA/STR/A.txt", "r")
	root = 2
end

if $choice == 3 then
	text = File.open("DATA/STR/B.txt", "r")
	root = 3
end

if $choice == 4 then
	text = File.open("DATA/STR/C.txt", "r")
	root = 4
end

if $choice == 5 then
	text = File.open("DATA/STR/D.txt", "r")
	root = 5
end

if $choice == 6 then
	text = File.open("DATA/STR/E.txt", "r")
	root = 6
end

if $choice == 7 then
	text = File.open("DATA/STR/F.txt", "r")
	root = 7
end

string = text.read

lineno = 0

choice = 0

#一行ずつテキストデータを描画（タグにて描画処理も行う）
string.each_line do |line|

	case line

	#背景画像01の描画
	when /bg01/

		bg = bg01
		lineno += 1

	#背景画像02の描画
	when /bg02/

		bg = bg02
		lineno += 1

	#立ち絵01の描画
	when /char01/

		char = char01
		lineno += 1

	#立ち絵02の描画
	when /char02/

		char = char02
		lineno += 1

	#立ち絵の削除
	when /char_delete/

		char = Image.new(640, 480, [0, 0, 0, 0])
		lineno += 1

	#効果音01の再生
	when /se01/

		se = se01
		se.set_volume($se_vol, 0)
		se.play
		lineno += 1

	#BGM01の再生
	when /bgm01/

		bgm = bgm01
		bgm.set_volume($bgm_vol, 0)
		bgm.play
		lineno += 1

	#選択肢の描画
	when /choice/

		lineno += 1

		bgm.stop

		#カーソルの高さ
		menu_y = 350
	
		#選択肢の読み込み
		case $choice

			#$choice = 1の時
			when 1

			choice1 = File.open("DATA/STR/CHOICE/choice1.txt", "r")
			choice2 = File.open("DATA/STR/CHOICE/choice2.txt", "r")
			draw_choice1 = choice1.read
			draw_choice2 = choice2.read

			#$choice = 2の時
			when 2

			choice1 = File.open("DATA/STR/CHOICE/choice3.txt", "r")
			choice2 = File.open("DATA/STR/CHOICE/choice4.txt", "r")
			draw_choice1 = choice1.read
			draw_choice2 = choice2.read

			#$choice = 3の時
			when 3

			choice1 = File.open("DATA/STR/CHOICE/choice5.txt", "r")
			choice2 = File.open("DATA/STR/CHOICE/choice6.txt", "r")
			draw_choice1 = choice1.read
			draw_choice2 = choice2.read

			else

			end

		#選択肢描画ループ
		Window.loop do

			#ウインドウ描画
			Window.draw(0, 350, window, 3)

			#背景画像＆立ち絵画像の描画
			Window.draw(0, 0, bg, 1)
 			Window.draw(150, 0, char, 2)

			#選択肢の描画
			Window.draw_font(180, 350, draw_choice1, font, z:4)
			Window.draw_font(180, 380, draw_choice2, font, z:4)

			#カーソルの描画
			Window.draw_font(150, menu_y, "□", font, z:4)

			#choice1を選択した際の処理
			if Input.key_push?(K_RETURN) && menu_y == 350 then

				if $choice == 1 then
					$choice = 2
					break
				end

				if $choice == 2 then
					$choice = 4
					break
				end

				if $choice == 3 then
					$choice = 6
					break
				end

			end

			#Lchoice2を選択した際の処理
			if Input.key_push?(K_RETURN) && menu_y == 380 then

				if $choice == 1 then
					$choice = 3
					break
				end

				if $choice == 2 then
					$choice = 5
					break
				end

				if $choice == 3 then
					$choice = 7
					break
				end

			end

			#カーソルのキー操作（↑キー）
			if Input.key_push?(K_UP) then
				menu_y -= 30

				if menu_y <= 320 then
					menu_y = 380
				end
			end

			#カーソルのキー操作（↓キー）
			if Input.key_push?(K_DOWN) then
				menu_y += 30

				if menu_y >= 410 then
					menu_y = 350
				end
			end

			#バックスペースキーでゲームメニューを呼び出す
			if Input.key_push?(K_BACK) then

				#BGMの再生停止
				bgm.stop
				
				#ルート管理変数の記憶
				choice = $choice

				#スクリプト行数の記憶
				$lineno = lineno

				#ゲームメニューの呼び出し
				gamemenu()

				#行数を呼び出す
				lineno = $lineno
			end

			#エスケープキーでゲーム終了
			if Input.key_push?(K_ESCAPE) then
				exit
			end
		end

	#ゲーム終了タグ
	when /EOF/
		exit

	#一行ごとに文字列の描画
	else 

	lineno += 1

	if lineno >= $lineno then

		Window.loop do

			#文字数が20文字以下なら一行で表示
			if line.length <= 20 then
				Window.draw(0, 0, bg, 1)
				Window.draw(150, 0, char, 2)
				Window.draw(0, 350, window, 3)
				Window.draw_font(30, 350, line, font, z:4)
			end

			#文字数が40文字以上なら二行で表示
			if line.length >= 21 then
				line1 = line.slice(0..20)
				line2 = line.slice(21..40)
 				Window.draw(0, 0, bg, 1)
	 			Window.draw(150, 0, char, 2)
  				Window.draw(0, 350, window, 3)
				Window.draw_font(30, 350, line1, font, z:4)
				Window.draw_font(30, 380, line2, font, z:4)
			end

			#文字数が60文字以上なら三行で表示
			if line.length >= 41 then
				line1 = line.slice(0..20)
				line2 = line.slice(21..40)
				line3 = line.slice(41..60)
				Window.draw(0, 0, bg, 1)
	 			Window.draw(150, 0, char, 2)
  				Window.draw(0, 350, window, 3)
				Window.draw_font(30, 350, line1, font, z:4)
				Window.draw_font(30, 380, line2, font, z:4)
				Window.draw_font(30, 410, line3, font, z:4)
			end

			#バックスペースキーでゲームメニューを呼び出す
			if Input.key_push?(K_BACK) then
				
				#BGMの再生停止
				bgm.stop
				
				#ルート管理変数の記憶
				choice = $choice

				#スクリプト行数の記憶
				$lineno = lineno

				#ゲームメニューの呼び出し
				gamemenu()

				#行数を呼び出す
				lineno = $lineno

			end
	
			#エスケープキーでゲーム終了
			if Input.key_push?(K_ESCAPE) then
				exit
			end

			#エンターキーで次の文字列を呼び出す
			if Input.key_push?(K_RETURN) then
				break
			end
		end

	end

	end

	#ゲームメニュー起動後に描画画面に戻す
	if root == choice && root == $choice then
		lineno = $lineno
		break
	end

	#セーブデータ読込時にループを抜け出す。
	if root != $choice then

		lineno = 0
		$lineno = 0
		break
	end

end

end
