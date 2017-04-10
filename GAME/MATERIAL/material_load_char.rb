# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�����G�f�ޓǍ������\�[�X

#DXRuby�̓ǂݍ���
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
