#ノベルゲームエンジン「LINKS」 on Ruby
#ゲームメニューでのカーソル操作処理ソース

def gamemenu_key(menu_y)

	#カーソルのキー操作（↑キー）
	if Input.key_push?(K_UP) then
		menu_y -= 50

		if menu_y <= 150 then
			menu_y = 450
		end
	end

	#カーソルのキー操作（↓キー）
	if Input.key_push?(K_DOWN) then
		menu_y += 50

		if menu_y >= 500 then
			menu_y = 200
		end
	end

	return menu_y
end