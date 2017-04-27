# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#スクリプトタグ処理(立ち絵)ソース

#DXRubyの読み込み
require 'dxruby'

class ScriptSwitch_char

	#初期化
	def initialize(text = "", char = Image.new(640, 480, [0, 0, 0, 0]))
		@text = text
		@char = char
	end

	def load_char

		case @text
			#立ち絵01の描画
			when /char01/
				@char = MaterialLoad_char.new("CHAR01").load

			#立ち絵02の描画
			when /char02/
				@char = MaterialLoad_char.new("CHAR02").load

			#立ち絵03の描画
			when /char03/
				@char = MaterialLoad_char.new("CHAR03").load

			#立ち絵04の描画
			when /char04/
				@char = MaterialLoad_char.new("CHAR04").load

			#立ち絵05の描画
			when /char05/
				@char = MaterialLoad_char.new("CHAR05").load

			#立ち絵06の描画
			when /char06/
				@char = MaterialLoad_char.new("CHAR06").load

			#立ち絵07の描画
			when /char07/
				@char = MaterialLoad_char.new("CHAR07").load

			#立ち絵08の描画
			when /char08/
				@char = MaterialLoad_char.new("CHAR08").load

			#立ち絵09の描画
			when /char09/
				@char = MaterialLoad_char.new("CHAR09").load

			#立ち絵10の描画
			when /char10/
				@char = MaterialLoad_char.new("CHAR10").load

			#立ち絵11の描画
			when /char11/
				@char = MaterialLoad_char.new("CHAR11").load

			#立ち絵12の描画
			when /char12/
				@char = MaterialLoad_char.new("CHAR12").load

			#立ち絵13の描画
			when /char13/
				@char = MaterialLoad_char.new("CHAR13").load

			#立ち絵14の描画
			when /char14/
				@char = MaterialLoad_char.new("CHAR14").load

			#立ち絵15の描画
			when /char15/
				@char = MaterialLoad_char.new("CHAR15").load

			#立ち絵16の描画
			when /char16/
				@char = MaterialLoad_char.new("CHAR16").load

			#立ち絵17の描画
			when /char17/
				@char = MaterialLoad_char.new("CHAR17").load

			#立ち絵18の描画
			when /char18/
				@char = MaterialLoad_char.new("CHAR18").load

			#立ち絵19の描画
			when /char19/
				@char = MaterialLoad_char.new("CHAR19").load

			#立ち絵20の描画
			when /char20/
				@char = MaterialLoad_char.new("CHAR20").load
		end

		return @char
	end
end
