# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�X�N���v�g�^�O����(���ʉ�)�\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

class ScriptSwitch_se

	#������
	def initialize(text = "", se = 0)
		@text = text
		@se = se
	end

	def load_se

		case @text

		#���ʉ�01�̍Đ�
		when /se01/
			@se = MaterialLoad_se.new("SE01").load.set_volume($se_vol, 0).play

		#���ʉ�02�̍Đ�
		when /se02/
			@se = MaterialLoad_se.new("SE02").load.set_volume($se_vol, 0).play

		#���ʉ�03�̍Đ�
		when /se03/
			@se = MaterialLoad_se.new("SE03").load.set_volume($se_vol, 0).play

		#���ʉ�04�̍Đ�
		when /se04/
			@se = MaterialLoad_se.new("SE04").load.set_volume($se_vol, 0).play

		#���ʉ�05�̍Đ�
		when /se05/
			@se = MaterialLoad_se.new("SE05").load.set_volume($se_vol, 0).play

		#���ʉ�06�̍Đ�
		when /se06/
			@se = MaterialLoad_se.new("SE06").load.set_volume($se_vol, 0).play

		#���ʉ�07�̍Đ�
		when /se07/
			@se = MaterialLoad_se.new("SE07").load.set_volume($se_vol, 0).play

		#���ʉ�08�̍Đ�
		when /se08/
			@se = MaterialLoad_se.new("SE08").load.set_volume($se_vol, 0).play

		#���ʉ�09�̍Đ�
		when /se09/
			@se = MaterialLoad_se.new("SE09").load.set_volume($se_vol, 0).play

		#���ʉ�10�̍Đ�
		when /se10/
			@se = MaterialLoad_se.new("SE10").load.set_volume($se_vol, 0).play

		#���ʉ�01�̍Đ�
		when /se11/
			@se = MaterialLoad_se.new("SE11").load.set_volume($se_vol, 0).play

		#���ʉ�12�̍Đ�
		when /se12/
			@se = MaterialLoad_se.new("SE12").load.set_volume($se_vol, 0).play

		#���ʉ�13�̍Đ�
		when /se13/
			@se = MaterialLoad_se.new("SE13").load.set_volume($se_vol, 0).play

		#���ʉ�14�̍Đ�
		when /se14/
			@se = MaterialLoad_se.new("SE14").load.set_volume($se_vol, 0).play

		#���ʉ�15�̍Đ�
		when /se15/
			@se = MaterialLoad_se.new("SE15").load.set_volume($se_vol, 0).play

		#���ʉ�16�̍Đ�
		when /se16/
			@se = MaterialLoad_se.new("SE16").load.set_volume($se_vol, 0).play

		#���ʉ�17�̍Đ�
		when /se17/
			@se = MaterialLoad_se.new("SE17").load.set_volume($se_vol, 0).play

		#���ʉ�18�̍Đ�
		when /se18/
			@se = MaterialLoad_se.new("SE18").load.set_volume($se_vol, 0).play

		#���ʉ�19�̍Đ�
		when /se19/
			@se = MaterialLoad_se.new("SE19").load.set_volume($se_vol, 0).play

		#���ʉ�20�̍Đ�
		when /se20/
			@se = MaterialLoad_se.new("SE20").load.set_volume($se_vol, 0).play
		end

		return @se
	end
end
