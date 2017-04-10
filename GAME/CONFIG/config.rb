# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#コンフィグ処理ソース

#DXRubyの読み込み
require 'dxruby'

#configメソッド
def config

font = Font.new(26)

#カーソル初期位置
menu_y = 100

#background = Image.load("DATA/BG/TITLE.png")

	#描画ループ
	Window.loop do

#		Window.draw(0, 0, background)

		Window.draw_font(100, 100, "BGM音量", font, z:4)
		Window.draw_font(100, 150, "SE音量", font, z:4)
		Window.draw_font(100, 200, "QUIT", font, z:4)

		Window.draw_font(220, 100, "#{$bgm_vol}", font, z:4)
		Window.draw_font(220, 150, "#{$se_vol}", font, z:4)

		#カーソルの描画
		Window.draw_font(50, menu_y, "□", font)

		#カーソルのキー操作（→キー）
		if Input.key_push?(K_RIGHT) then

			if menu_y == 100 && $bgm_vol != 230 then
				
				$bgm_vol = $bgm_vol + 10

			end

			if menu_y == 150 && $se_vol != 230 then
				
				$se_vol = $se_vol + 10

			end

		end

		#カーソルのキー操作（←キー）
		if Input.key_push?(K_LEFT) then

			if menu_y == 100 && $bgm_vol != 0 then

				$bgm_vol = $bgm_vol - 10

			end

			if menu_y == 150 && $se_vol != 0 then

				$bgm_vol = $bgm_vol - 10

			end
		end

		#カーソルのキー操作（↑キー）
		if Input.key_push?(K_UP) then
			menu_y -= 50

			if menu_y <= 50 then
				menu_y = 200
			end
		end

		#カーソルのキー操作（↓キー）
		if Input.key_push?(K_DOWN) then
			menu_y += 50

			if menu_y >= 250 then
				menu_y = 100
			end
		end

		if Input.key_push?(K_RETURN) && menu_y == 200 then

			break

		end

		#エスケープキーで終了
		if Input.key_push?(K_ESCAPE) then
			exit
			break
		end

	end

end
