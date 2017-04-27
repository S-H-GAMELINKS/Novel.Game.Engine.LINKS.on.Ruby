
#ゲームメニュー呼び出し
def gamemenu_call(lineno, choice)

	#バックスペースキーでゲームメニューを呼び出す
	if Input.key_push?(K_BACK) then

		#セーブデータ用スクリーンショット取得変数をONに
		$savedata_screenshot = 1

		#BGMの再生停止
		$bgm.stop
			
		#ルート管理変数の記憶
		choice = $choice

		#スクリプト行数の記憶
		$lineno = lineno

		#セーブデータ用スクリーンショット取得
		savedata_screenshot()

		#ゲームメニューの呼び出し
		gamemenu()
	end

	return choice
end