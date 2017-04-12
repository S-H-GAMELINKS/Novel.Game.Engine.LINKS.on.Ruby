# coding: shift_jis
#ノベルゲームエンジン「LINKS」on Ruby

#DXRubyなどを一括読込
require_relative 'GAME/game_h'

#タイトル名
Window.caption = ("ノベルゲームエンジン「LINKS」 on Ruby")

#メインループ
Window.loop do

	#タイトル
	if $choice == 0 then
		title()
	end

	#スクリプト処理
	if $choice != 99 then
		script()
	end
end

