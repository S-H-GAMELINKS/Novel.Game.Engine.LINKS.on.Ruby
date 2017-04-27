# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#各種描画変数の定義

#ルート管理変数
$choice = 0

#スクリプト行数管理変数
$lineno = 0

#BGM音量変数
$bgm_vol = 230

#SE音量変数
$se_vol = 230

#フォントサイズの設定
$font = Font.new(26)

#各種素材の初期化
$bg  = Image.new(640, 480, [0, 0, 0, 0])
$char  = Image.new(640, 480, [0, 0, 0, 0])
$bgm = 0
$se = 0

#ウインドウ画像作成
$window = Image.new(640, 200, [255, 0, 0, 0])

