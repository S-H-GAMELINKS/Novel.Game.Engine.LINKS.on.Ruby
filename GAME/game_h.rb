
#DXRubyの読み込み
require 'dxruby'

#fileutilsライブラリの読み込み
require 'fileutils'

#タイトル処理の呼び出し
require_relative 'title'

#ゲームループ処理の呼び出し
require_relative 'game_loop'

#各種描画変数の読み込み
require_relative 'var_h'

#セーブ処理処理の呼び出し
require_relative 'SAVE_LOAD/savedata_save'

#ロード処理処理の呼び出し
require_relative 'SAVE_LOAD/savedata_load'

#コンフィグ処理処理の呼び出し
require_relative 'CONFIG/config'

#素材読込(立ち絵)
require_relative 'MATERIAL/material_load_char'

#素材読込(背景)
require_relative 'MATERIAL/material_load_bg'

#素材読込(効果音)
require_relative 'MATERIAL/material_load_se'

#素材読込(BGM)
require_relative 'MATERIAL/material_load_bgm'

#スクリプトデータ読込
require_relative 'SCRIPT/script_read'

#スクリプト描画関連の読み込み
require_relative 'SCRIPT/script_draw'

#ルート変数関連の読み込み
require_relative 'SCRIPT/script_root'

#スクリプトタグ処理用ヘッダ
require_relative 'SCRIPT/script_h'

#選択肢描画関連の読み込み
require_relative 'CHOICE/choice_draw'

#選択肢キー操作関連の読み込み
require_relative 'CHOICE/choice_keymove'

#gamemenuメソッドの読み込み
require_relative 'gamemenu'

#savedata_screenshotメソッドの読み込み
require_relative 'SAVE_LOAD/savedata_screenshot'
