#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニュー処理ソース

def gamemenu_choice(menu_y)

		#TITLEを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 200 then
			$choice = 0
		end

		#SAVEを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 250 then

			#セーブ処理
			savedata_save()
		end

		#LOADを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 300 then

			#ロード処理
			savedata_load()
		end

		#DELETEを選択した際の処理
		if Input.key_push?(K_RETURN) && menu_y == 350 then

			#削除処理
			savedata_delete()
		end

		#CONFIGを選んだ際の処理
		if Input.key_push?(K_RETURN) && menu_y == 400 then

			#コンフィグ処理
			config()
		end
end