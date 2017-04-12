# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#BGM素材読込処理ソース

class MaterialLoad_bgm

	def initialize(bgm_path = "no sound data", bgm = 0)
		@bgm_path = bgm_path
		@bgm = bgm
	end

	def load
		@bgm = Sound.new("DATA/BGM/#{@bgm_path}.wav")
		return @bgm
	end
end
