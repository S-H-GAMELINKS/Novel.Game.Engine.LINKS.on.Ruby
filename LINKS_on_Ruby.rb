# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�von Ruby

#DXRuby�Ȃǂ��ꊇ�Ǎ�
require_relative 'SYSTEM/LINKS_on_Ruby_h'

#�^�C�g����
Window.caption = ("�m�x���Q�[���G���W���uLINKS�v on Ruby")

#���C�����[�v
Window.loop do

	#�^�C�g��
	if $choice == 0 then
		title()
	end

	#�Q�[�����[�v����
	if $choice != 99 then
		game_loop()
	end
end

