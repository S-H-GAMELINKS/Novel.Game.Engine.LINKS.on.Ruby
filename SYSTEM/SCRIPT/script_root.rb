# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#ルート変数管理ソース

#DXRubyの読み込み
require 'dxruby'

class ScriptRoot

	#初期化
	def initialize(root = 0)
		@root = root
	end

	#ルート変数の代入
	def root

		case $choice

			when 1
				root = 1

			when 2
				root = 2

			when 3
				root = 3

			when 4
				root = 4

			when 5
				root = 5

			when 6
				root = 6

			when 7
				root = 7
		end

		@root = root
		return @root
	end
end
