# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#選択肢キー操作処理ソース

class ChoiceKeyMove

	#初期化
	def initialize(menu_y = 0)
		@menu_y = menu_y
	end

	def key_move

		#choice1を選択した際の処理
		if Input.key_push?(K_RETURN) && $menu_y == 350 then

			case $choice

			when 1
				$choice = 2

			when 2
				$choice = 4

			when 3
				$choice = 6
			end
		end

		#Lchoice2を選択した際の処理
		if Input.key_push?(K_RETURN) && $menu_y == 380 then

			case $choice

			when 1
				$choice = 3

			when 2
				$choice = 5

			when 3
				$choice = 7
			end
		end

		#カーソルのキー操作（↑キー）
		if Input.key_push?(K_UP) then
			$menu_y -= 30

			if $menu_y <= 320 then
				$menu_y = 380
			end
		end

		#カーソルのキー操作（↓キー）
		if Input.key_push?(K_DOWN) then
			$menu_y += 30

			if $menu_y >= 410 then
				$menu_y = 350
			end
		end
	end
end
