# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#���ʉ��f�ޓǍ������\�[�X

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
