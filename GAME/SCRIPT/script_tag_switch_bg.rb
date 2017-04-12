# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#スクリプトタグ処理(背景画像)ソース

#DXRubyの読み込み
require 'dxruby'

class ScriptSwitch_bg

	#初期化
	def initialize(text = "", bg = Image.new(640, 480, [0, 0, 0, 0]))
		@text = text
		@bg = bg
	end

	def load_bg

		case @text
			#背景画像01の描画
			when /bg01/
				@bg = MaterialLoad_bg.new("BG01").load

			#背景画像02の描画
			when /bg02/
				@bg = MaterialLoad_bg.new("BG02").load

			#背景画像03の描画
			when /bg03/
				@bg = MaterialLoad_bg.new("BG03").load

			#背景画像04の描画
			when /bg04/
				@bg = MaterialLoad_bg.new("BG04").load

			#背景画像05の描画
			when /bg05/
				@bg = MaterialLoad_bg.new("BG05").load

			#背景画像06の描画
			when /bg06/
				@bg = MaterialLoad_bg.new("BG06").load

			#背景画像07の描画
			when /bg07/
				@bg = MaterialLoad_bg.new("BG07").load

			#背景画像08の描画
			when /bg08/
				@bg = MaterialLoad_bg.new("BG08").load

			#背景画像09の描画
			when /bg09/
				@bg = MaterialLoad_bg.new("BG09").load

			#背景画像10の描画
			when /bg10/
				@bg = MaterialLoad_bg.new("BG10").load

			#背景画像11の描画
			when /bg11/
				@bg = MaterialLoad_bg.new("BG11").load

			#背景画像12の描画
			when /bg12/
				@bg = MaterialLoad_bg.new("BG12").load

			#背景画像13の描画
			when /bg13/
				@bg = MaterialLoad_bg.new("BG13").load

			#背景画像14の描画
			when /bg14/
				@bg = MaterialLoad_bg.new("BG14").load

			#背景画像15の描画
			when /bg15/
				@bg = MaterialLoad_bg.new("BG15").load

			#背景画像16の描画
			when /bg16/
				@bg = MaterialLoad_bg.new("BG16").load

			#背景画像17の描画
			when /bg17/
				@bg = MaterialLoad_bg.new("BG17").load

			#背景画像18の描画
			when /bg18/
				@bg = MaterialLoad_bg.new("BG18").load

			#背景画像19の描画
			when /bg19/
				@bg = MaterialLoad_bg.new("BG19").load

			#背景画像20の描画
			when /bg20/
				@bg = MaterialLoad_bg.new("BG20").load
		end

		return @bg
	end
end
