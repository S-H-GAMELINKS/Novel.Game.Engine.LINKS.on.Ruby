# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�X�N���v�g�^�O����(���ʉ�)�\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

class ScriptSwitch_bgm

	#������
	def initialize(text = "", bgm = 0)
		@text = text
		@bgm = bgm
	end

	def load_bgm

		case @text

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01�̍Đ�
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play
		end

		return @bgm
	end
end
