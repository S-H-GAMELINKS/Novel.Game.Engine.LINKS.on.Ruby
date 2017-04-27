
#DXRubyの読み込み
require 'dxruby'

#fileutilsライブラリの読み込み
require 'fileutils'

#タイトル処理の呼び出し
require_relative 'title'

#各種描画変数の読み込み
require_relative 'var_h'

#セーブデータ関連ヘッダ
require_relative 'SAVEDATA/savedata_h'

#コンフィグ処理処理の呼び出し
require_relative 'CONFIG/config'

#素材読込関連ヘッダ
require_relative 'MATERIAL/material_h'

#スクリプトタグ処理ヘッダ
require_relative 'SCRIPT/script_h'

#選択肢処理関連ヘッダ
require_relative 'CHOICE/choice_h'

#ゲーム処理関連ヘッダ
require_relative 'GAME/game_h'
