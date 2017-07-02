# encoding: shift_jis
# ノベルゲームエンジン「LINKS」 on Ruby ver 0.10

#DXRuby読込
require_relative 'SYSTEM/header'

#ソフトウェア名の指定
Window.caption = ("ノベルゲームエンジン「LINKS」 on Ruby")

#マウスポインタ生成
mouse = Sprite.new(0, 0, Image.new(10, 10, C_DEFAULT))

#フォントオブジェクト生成
font = Font.new(26)

#メッセージボックス生成
messagebox = WIN32OLE.new('WScript.Shell')

#ルート管理変数
flag = 0

#音量変数
$bgm_vol = 230
$se_vol = 230

#行管理変数
$lineno = 0

#メインループ
Window.loop do

	#flagでルート分岐
	case flag

		#タイトル画面
		when 0
			flag = title(mouse, font, flag, messagebox)
			
		#各種ルート
		else
			script = Script.new; script.read(flag); flag = script.draw(font, messagebox, flag, mouse)
	end
end

