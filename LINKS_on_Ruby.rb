# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�von Ruby

#DXRuby�Ȃǂ��ꊇ�Ǎ�
require_relative 'GAME/game_h'

#�^�C�g����
Window.caption = ("�m�x���Q�[���G���W���uLINKS�v on Ruby")

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

