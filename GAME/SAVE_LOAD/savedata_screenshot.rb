# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#スクリプト処理ソース

#セーブデータ用スクリーンショット取得関数
def savedata_screenshot

	#セーブデータ１用のスクリーンショット
	if $savedata_screenshot == 1 then

		Window.get_screen_shot("DATA/SAVE/savedata.png", format=FORMAT_PNG)
		$savedata_screenshot = 0
	end
end