# coding: shift_jis
#ノベルゲームエンジン「LINKS」on Ruby

#DXRubyなどを一括読込
require_relative 'SYSTEM/LINKS_on_Ruby_h'

#タイトル名
Window.caption = ("ノベルゲームエンジン「LINKS」 on Ruby")

#メインループ
Window.loop do

	#タイトル
	if $choice == 0 then
		title()
	end

	#ゲームループ処理
	if $choice != 99 then
		game_loop()
	end
end

