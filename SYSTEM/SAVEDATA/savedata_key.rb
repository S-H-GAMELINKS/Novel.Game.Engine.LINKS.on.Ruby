# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#セーブデータ・キー操作ソース

def savedata_key(menu_y)

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
	return menu_y
end