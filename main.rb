# coding: shift_jis

#�m�x���Q�[���G���W���uLINKS�von Ruby
#DXRuby�̌Ăяo��
require 'dxruby'

#�^�C�g�������̌Ăяo��
require_relative 'title'

#�X�N���v�g�����̌Ăяo��
require_relative 'script'

#�^�C�g����
Window.caption = ("�m�x���Q�[���G���W���uLINKS�v on Ruby")

#���[�g�Ǘ��ϐ�
$choice = 0

#�X�N���v�g�s���Ǘ��ϐ�
$lineno = 0

#BGM���ʕϐ�
$bgm_vol = 230

#SE���ʕϐ�
$se_vol = 230

#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾�ϐ�
$savedata_screenshot = 0

#���C�����[�v
Window.loop do

	#�^�C�g��
	if $choice == 0 then
		title()
	end

	#�X�N���v�g����
	if $choice != 99 then
		script()
	end

end

