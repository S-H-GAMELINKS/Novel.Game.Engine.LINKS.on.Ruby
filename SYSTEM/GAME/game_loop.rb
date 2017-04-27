# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームループ処理ソース

#game_loopメソッドの定義
def game_loop

#スクリプトデータ読込処理
string = ScriptRead.new.read

#ルート変数管理処理
root = ScriptRoot.new.root

lineno = 0
choice = 0

	#一行ずつテキストデータを描画（タグにて描画処理も行う）
	string.each_line do |line|

		case line

		#立ち絵処理
		when /\Achar\d\d/
			$char = ScriptSwitch_char.new(line).load_char
			lineno += 1

		#背景画像処理
		when /\Abg\d\d/
			$bg = ScriptSwitch_bg.new(line).load_bg
			lineno += 1

		#効果音処理
		when /\Ase\d\d/
			$se = ScriptSwitch_se.new(line).load_se
			lineno += 1

		#BGM処理
		when /\Abgm\d\d/
			$bgm = ScriptSwitch_bgm.new(line).load_bgm
			lineno += 1

		#立ち絵の削除
		when /char_delete/
			char = Image.new(640, 480, [0, 0, 0, 0])
			lineno += 1

		#選択肢の描画
		when /choice/

			lineno += 1
			$bgm.stop

			choice1 = ChoiceDraw.new(0, 0, 0, 0, 0, 0).load_choice1
			choice2 = ChoiceDraw.new(0, 0, 0, 0, 0, 0).load_choice2
		
			#カーソルの高さ
			$menu_y = 350
	
			#選択肢描画オブジェクトの生成
			choice_string = ChoiceDraw.new($bg, $char, $window, choice1, choice2, $font)
			choice_keymove = ChoiceKeyMove.new($menu_y)

			choice_temp = $choice

			#選択肢描画ループ
			Window.loop do

				#選択肢の描画
				choice_string.draw_choice

				#選択肢のキー操作
				choice_keymove.key_move

				#カーソルの描画
				Window.draw_font(150, $menu_y, "□", $font, z:4)

				#選択肢を選んだあとループを抜ける
				if choice_temp != $choice then
					break
				end

				#バックスペースキーでゲームメニューを呼び出す
				choice = gamemenu_call(lineno, choice)

				#エスケープキーでゲーム終了
				game_exit()
			end

		#ゲーム終了タグ
		when /EOF/
			exit

		#一行ごとに文字列の描画
		else 

		lineno += 1

			if lineno >= $lineno then

				#スクリプト＆各種素材描画用
				script_line = ScriptDraw.new(line, $bg, $char, $window, $font)

				Window.loop do

					#スクリプトの描画＆各種素材の描画
					script_line.draw

					#バックスペースキーでゲームメニューを呼び出す
					choice = gamemenu_call(lineno, choice)

					#エスケープキーでゲーム終了
					game_exit()

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
