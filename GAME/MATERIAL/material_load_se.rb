# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#効果音素材読込処理ソース

class MaterialLoad_se

	def initialize(se_path = "no sound data", se = 0)
		@se_path = se_path
		@se = se
	end

	def load
		@se = Sound.new("DATA/SE/#{@se_path}.wav")
		return @se
	end
end
