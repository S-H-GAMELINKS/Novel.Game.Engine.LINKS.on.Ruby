# encoding: shift_jis
# �m�x���Q�[���G���W���uLINKS�v on Ruby ver 0.10

#DXRuby�Ǎ�
require_relative 'SYSTEM/header'

#�\�t�g�E�F�A���̎w��
Window.caption = ("�m�x���Q�[���G���W���uLINKS�v on Ruby")

#�}�E�X�|�C���^����
mouse = Sprite.new(0, 0, Image.new(10, 10, C_DEFAULT))

#�t�H���g�I�u�W�F�N�g����
font = Font.new(26)

#���b�Z�[�W�{�b�N�X����
messagebox = WIN32OLE.new('WScript.Shell')

#���[�g�Ǘ��ϐ�
flag = 0

#���ʕϐ�
$bgm_vol = 230
$se_vol = 230

#�s�Ǘ��ϐ�
$lineno = 0

#���C�����[�v
Window.loop do

	#flag�Ń��[�g����
	case flag

		#�^�C�g�����
		when 0
			flag = title(mouse, font, flag, messagebox)
			
		#�e�탋�[�g
		else
			script = Script.new; script.read(flag); flag = script.draw(font, messagebox, flag, mouse)
	end
end

