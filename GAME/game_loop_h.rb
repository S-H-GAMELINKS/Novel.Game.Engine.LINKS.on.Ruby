#ゲームループ用

#素材読込(立ち絵)
require_relative 'MATERIAL/material_load_char'

#素材読込(背景)
require_relative 'MATERIAL/material_load_bg'

#スクリプトデータ読込
require_relative 'SCRIPT/script_read'

#スクリプト描画関連の読み込み
require_relative 'SCRIPT/script_draw'

#ルート変数関連の読み込み
require_relative 'SCRIPT/script_root'


#選択肢描画関連の読み込み
require_relative 'CHOICE/choice_draw'

#gamemenuメソッドの読み込み
require_relative 'gamemenu'

#savedata_screenshotメソッドの読み込み
require_relative 'SAVE_LOAD/savedata_screenshot'


