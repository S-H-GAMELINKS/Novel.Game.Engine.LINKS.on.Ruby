# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#BGM�f�ޓǍ������\�[�X

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
