# encoding: shift_jis

#スクリプト描画メソッド
def script_line_draw(line, font)

	#文字位置の初期化
	x = 0; y = 0

	line.each_char do |word|

		Window.draw_font(30 + x, 350 + y, word, font, z:4)

		#文字位置を一つ進める
		x += 30

		if x >= 600 then
			x = 0
			y += 30
		end
	end
end

#スクリプト描画クラス
class Script

	#初期化
	def initialize(text = "")
		@bg = Sprite.new(0, 350, Image.new(640, 480, C_DEFAULT))
		@char = Sprite.new(0, 350, Image.new(640, 480, C_DEFAULT))
		@bgm = nil
		@se = nil
		@window = Sprite.new(0, 350, Image.new(640, 480, C_BLACK))
	end

	#スクリプト読込
	def read(flag)

		case flag
			#メインルート
			when 1
				text = File.open("DATA/STR/MAIN.txt", "r")
			#Aルート
			when 2
				text = File.open("DATA/STR/A.txt", "r")
			#Bルート
			when 3
				text = File.open("DATA/STR/B.txt", "r")
			#Cルート
			when 4
				text = File.open("DATA/STR/C.txt", "r")
			#Dルート
			when 5
				text = File.open("DATA/STR/D.txt", "r")
			#Eルート
			when 6
				text = File.open("DATA/STR/E.txt", "r")
			#Fルート
			when 7
				text = File.open("DATA/STR/F.txt", "r")
		end

		return @string = text.read
	end

	#選択肢の読込
	def choice_read(flag)
		
		#選択肢の読み込み
		choice1 = File.open("DATA/STR/CHOICE/choice#{flag*2 - 1}.txt", "r")
		choice2 = File.open("DATA/STR/CHOICE/choice#{flag*2}.txt", "r")

		return choice1.read, choice2.read
	end

	#選択肢処理
	def choice(flag, font, mouse, messagebox, lineno)

		#各種選択肢の読込
		choice1, choice2 = choice_read(flag)

		#選択肢クリック判定用
		choice1_check = Sprite.new(180, 350, Image.new(300, 30, C_DEFAULT))
		choice2_check = Sprite.new(180, 380, Image.new(300, 30, C_DEFAULT))

		temp_lineno = $lineno
		temp_flag = flag

		#選択肢描画ループ
		Window.loop do
			#マウス位置の取得
			mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

			#選択肢の描画
			Window.draw_font(180, 350, choice1, font, z:4)
			Window.draw_font(180, 380, choice2, font, z:4)
			choice1_check.draw; choice2_check.draw

			#各種素材の描画
			@bg.draw; @char.draw; @window.draw

			#選択肢判定
			case mouse
				when choice1_check
					if Input.mouse_push?(M_LBUTTON)then
						@bgm.stop
						$lineno = 0
						return flag = flag * 2
					end
				when choice2_check
					if Input.mouse_push?(M_LBUTTON)then
						@bgm.stop
						$lineno = 0
						return flag = flag * 2 + 1
					end
			end

			#バックスペースキーでゲームメニューを呼び出す
			temp_flag = gamemenu_call(messagebox, flag, font, mouse, lineno)

			#エスケープキーでゲーム終了
			exit_message(messagebox)

			#セーブデータ読み込み時の処理(flag変数が異なる場合)
			if  temp_lineno != $lineno && temp_flag != flag then
				return temp_flag
			end

			#セーブデータ読み込み時の処理(flag変数が同じ場合)
			if temp_flag == flag then
				return flag
			end
		end
	end

	#文字列と各種素材の描画
	def draw(font, messagebox, flag, mouse)

		lineno = 0

		@string.each_line do |line|

			case line
				when /char\d\d/
					line.chomp!
					@char = Sprite.new(150, 0, Image.load("DATA/CHAR/#{line}.png"))
					line.gsub!(/char\d\d/, "")
				when /bg\d\d/
					line.chomp!
					@bg = Sprite.new(0, 0, Image.load("DATA/BG/#{line}.png"))
					line.gsub!(/bg\d\d/, "")
				when /bgm\d\d/
					line.chomp!
					@bgm = Sound.new("DATA/BGM/#{line}.wav"); @bgm.set_volume($bgm_vol, 0).play
					line.gsub!(/bgm\d\d/, "")
				when /se\d\d/
					line.chomp!
					@se = Sound.new("DATA/SE/#{line}.wav"); @se.set_volume($se_vol, 0).play
					line.gsub!(/se\d\d/, "")
				when /char_delete/
					line.chomp!
					@char = Sprite.new(150, 0, Image.new(640, 480, C_DEFAULT))
					line.gsub!(/char_delete/, "")
				when /choice/
					line.chomp!
					line.gsub!(/choice/, "")
					flag = choice(flag, font, mouse, messagebox, lineno)
					return flag
				when /EOF/
					line.gsub!(/EOF/, "")
					exit
				else
					lineno += 1

					temp_lineno = $lineno
					temp_flag = flag

					if lineno >= $lineno then

						Window.loop do

							@bg.draw; @char.draw; @window.draw

							script_line_draw(line, font)

							#左クリックで次の文字列を呼び出す
							if Input.mouse_push?(M_LBUTTON); break; end

							#ゲームメニュー呼び出し
							temp_flag = gamemenu_call(messagebox, flag, font, mouse, lineno)

							#エスケープキーで終了
							exit_message(messagebox)

							#セーブデータ読み込み時の処理(flag変数が異なる場合)
							if  temp_lineno != $lineno && temp_flag != flag then
								return temp_flag
							end

							#セーブデータ読み込み時の処理(flag変数が異なる場合)
							if temp_flag == flag then
								return flag
							end
						end
					end
				end	
		end
	end
end