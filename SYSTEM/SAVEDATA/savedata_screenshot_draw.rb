# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#セーブデータ用スクリーンショット描画処理ソース

def savedata_screenshot_draw(savedata1_screenshot, savedata2_screenshot, savedata3_screenshot, menu_y)

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
end