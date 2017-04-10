# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#立ち絵素材読込処理ソース

#DXRubyの読み込み
require 'dxruby'

class MaterialLoad_char

	def initialize(char_path = "no image", char = Image.new(640, 480, [0, 0, 0, 0]))
		@char_path = char_path
		@char = char
	end

	def load
		@char = Image.load("DATA/CHAR/#{@char_path}.png")
		return @char
	end
end
