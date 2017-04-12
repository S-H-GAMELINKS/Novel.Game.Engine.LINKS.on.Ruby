# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�X�N���v�g�^�O����(�����G)�\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

class ScriptSwitch_char

	#������
	def initialize(text = "", char = Image.new(640, 480, [0, 0, 0, 0]))
		@text = text
		@char = char
	end

	def load_char

		case @text
			#�����G01�̕`��
			when /char01/
				@char = MaterialLoad_char.new("CHAR01").load

			#�����G02�̕`��
			when /char02/
				@char = MaterialLoad_char.new("CHAR02").load

			#�����G03�̕`��
			when /char03/
				@char = MaterialLoad_char.new("CHAR03").load

			#�����G04�̕`��
			when /char04/
				@char = MaterialLoad_char.new("CHAR04").load

			#�����G05�̕`��
			when /char05/
				@char = MaterialLoad_char.new("CHAR05").load

			#�����G06�̕`��
			when /char06/
				@char = MaterialLoad_char.new("CHAR06").load

			#�����G07�̕`��
			when /char07/
				@char = MaterialLoad_char.new("CHAR07").load

			#�����G08�̕`��
			when /char08/
				@char = MaterialLoad_char.new("CHAR08").load

			#�����G09�̕`��
			when /char09/
				@char = MaterialLoad_char.new("CHAR09").load

			#�����G10�̕`��
			when /char10/
				@char = MaterialLoad_char.new("CHAR10").load

			#�����G11�̕`��
			when /char11/
				@char = MaterialLoad_char.new("CHAR11").load

			#�����G12�̕`��
			when /char12/
				@char = MaterialLoad_char.new("CHAR12").load

			#�����G13�̕`��
			when /char13/
				@char = MaterialLoad_char.new("CHAR13").load

			#�����G14�̕`��
			when /char14/
				@char = MaterialLoad_char.new("CHAR14").load

			#�����G15�̕`��
			when /char15/
				@char = MaterialLoad_char.new("CHAR15").load

			#�����G16�̕`��
			when /char16/
				@char = MaterialLoad_char.new("CHAR16").load

			#�����G17�̕`��
			when /char17/
				@char = MaterialLoad_char.new("CHAR17").load

			#�����G18�̕`��
			when /char18/
				@char = MaterialLoad_char.new("CHAR18").load

			#�����G19�̕`��
			when /char19/
				@char = MaterialLoad_char.new("CHAR19").load

			#�����G20�̕`��
			when /char20/
				@char = MaterialLoad_char.new("CHAR20").load
		end

		return @char
	end
end
