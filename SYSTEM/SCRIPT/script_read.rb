# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�e�L�X�g�Ǎ������\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

class ScriptRead

	#������
	def initialize(text = "")
		@text = text
	end

	def read

		case $choice

			when 1
				@text = File.open("DATA/STR/MAIN.txt", "r")

			when 2
				@text = File.open("DATA/STR/A.txt", "r")

			when 3
				@text = File.open("DATA/STR/B.txt", "r")

			when 4
				@text = File.open("DATA/STR/C.txt", "r")

			when 5
				@text = File.open("DATA/STR/D.txt", "r")

			when 6
				@text = File.open("DATA/STR/E.txt", "r")

			when 7
				@text = File.open("DATA/STR/F.txt", "r")
		end

		@string = @text.read
		return @string
	end
end
