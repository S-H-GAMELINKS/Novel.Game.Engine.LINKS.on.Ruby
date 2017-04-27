# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�X�N���v�g�^�O����(�w�i�摜)�\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

class ScriptSwitch_bg

	#������
	def initialize(text = "", bg = Image.new(640, 480, [0, 0, 0, 0]))
		@text = text
		@bg = bg
	end

	def load_bg

		case @text
			#�w�i�摜01�̕`��
			when /bg01/
				@bg = MaterialLoad_bg.new("BG01").load

			#�w�i�摜02�̕`��
			when /bg02/
				@bg = MaterialLoad_bg.new("BG02").load

			#�w�i�摜03�̕`��
			when /bg03/
				@bg = MaterialLoad_bg.new("BG03").load

			#�w�i�摜04�̕`��
			when /bg04/
				@bg = MaterialLoad_bg.new("BG04").load

			#�w�i�摜05�̕`��
			when /bg05/
				@bg = MaterialLoad_bg.new("BG05").load

			#�w�i�摜06�̕`��
			when /bg06/
				@bg = MaterialLoad_bg.new("BG06").load

			#�w�i�摜07�̕`��
			when /bg07/
				@bg = MaterialLoad_bg.new("BG07").load

			#�w�i�摜08�̕`��
			when /bg08/
				@bg = MaterialLoad_bg.new("BG08").load

			#�w�i�摜09�̕`��
			when /bg09/
				@bg = MaterialLoad_bg.new("BG09").load

			#�w�i�摜10�̕`��
			when /bg10/
				@bg = MaterialLoad_bg.new("BG10").load

			#�w�i�摜11�̕`��
			when /bg11/
				@bg = MaterialLoad_bg.new("BG11").load

			#�w�i�摜12�̕`��
			when /bg12/
				@bg = MaterialLoad_bg.new("BG12").load

			#�w�i�摜13�̕`��
			when /bg13/
				@bg = MaterialLoad_bg.new("BG13").load

			#�w�i�摜14�̕`��
			when /bg14/
				@bg = MaterialLoad_bg.new("BG14").load

			#�w�i�摜15�̕`��
			when /bg15/
				@bg = MaterialLoad_bg.new("BG15").load

			#�w�i�摜16�̕`��
			when /bg16/
				@bg = MaterialLoad_bg.new("BG16").load

			#�w�i�摜17�̕`��
			when /bg17/
				@bg = MaterialLoad_bg.new("BG17").load

			#�w�i�摜18�̕`��
			when /bg18/
				@bg = MaterialLoad_bg.new("BG18").load

			#�w�i�摜19�̕`��
			when /bg19/
				@bg = MaterialLoad_bg.new("BG19").load

			#�w�i�摜20�̕`��
			when /bg20/
				@bg = MaterialLoad_bg.new("BG20").load
		end

		return @bg
	end
end
