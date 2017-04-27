# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�w�i�f�ޓǍ������\�[�X

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
