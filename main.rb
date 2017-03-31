# coding: shift_jis

#ノベルゲームエンジン「LINKS」on Ruby
#DXRubyの呼び出し
require 'dxruby'

#タイトル処理の呼び出し
require_relative 'title'

#スクリプト処理の呼び出し
require_relative 'script'

#タイトル名
Window.caption = ("ノベルゲームエンジン「LINKS」 on Ruby")

#ルート管理変数
$choice = 0

#スクリプト行数管理変数
$lineno = 0

#BGM音量変数
$bgm_vol = 230

#SE音量変数
$se_vol = 230

#セーブデータ用スクリーンショット取得変数
$savedata_screenshot = 0

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

