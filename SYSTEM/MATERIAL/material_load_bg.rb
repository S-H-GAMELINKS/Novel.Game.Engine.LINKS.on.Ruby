# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#背景素材読込処理ソース

class MaterialLoad_bg

	def initialize(bg_path = "no image", bg = Image.new(640, 480, [0, 0, 0, 0]))
		@bg_path = bg_path
		@bg = bg
	end

	def load
		@bg = Image.load("DATA/BG/#{@bg_path}.png")
		return @bg
	end
end
