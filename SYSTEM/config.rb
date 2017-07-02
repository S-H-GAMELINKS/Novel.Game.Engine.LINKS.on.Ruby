# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#コンフィグ処理ソース

#タイトル画面用オブジェクト生成メソッド
def config_object

	#背景画像の読み込み
	title = Sprite.new(0, 0, Image.load("DATA/BG/TITLE.png"))

	#マウス用オブジェクト生成 C_DEFAULT
	bgm_vol_object = Sprite.new(100, 100, Image.new(100, 30, C_DEFAULT))
	se_vol_object = Sprite.new(100, 150, Image.new(100, 30, C_DEFAULT))
	quit = Sprite.new(100, 200, Image.new(100, 30, C_DEFAULT))

	return bgm_vol_object, se_vol_object, quit
end

#各種項目の描画
def config_draw(font)

	Window.draw_font(100, 100, "BGM音量", font, z:4)
	Window.draw_font(100, 150, "SE音量", font, z:4)
	Window.draw_font(100, 200, "QUIT", font, z:4)
	Window.draw_font(220, 100, "#{$bgm_vol}", font, z:4)
	Window.draw_font(220, 150, "#{$se_vol}", font, z:4)
end

#configメソッド
def config(font, mouse, messagebox)

	#各種オブジェクト生成
	bgm_vol_object, se_vol_object, quit = config_object

	#描画ループ
	Window.loop do

		#マウス位置の取得
		mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

		#各種オブジェクトの描画
		bgm_vol_object.draw; se_vol_object.draw; quit.draw

		#各項目の描画
		config_draw(font)

		#各種オブジェクトの衝突判定
		case mouse

			when bgm_vol_object
				#BGM音量調整
				if Input.mouse_push?(M_LBUTTON) && $bgm_vol != 230 then
					$bgm_vol = $bgm_vol + 10
				elsif Input.mouse_push?(M_RBUTTON) && $bgm_vol != 0 then
					$bgm_vol = $bgm_vol - 10
				end

			when se_vol_object
				#SE音量調整
				if Input.mouse_push?(M_LBUTTON) && $se_vol != 230 then
					$se_vol = $se_vol + 10
				elsif Input.mouse_push?(M_RBUTTON) && $se_vol != 0 then
					$se_vol = $se_vol - 10
				end

			when quit
				if Input.mouse_push?(M_LBUTTON) then
					break
				end
		end

		#エスケープキーで終了
		exit_message(messagebox)
	end
end
