# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�X�N���v�g�����\�[�X

#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾�֐�
def savedata_screenshot

	#�Z�[�u�f�[�^�P�p�̃X�N���[���V���b�g
	if $savedata_screenshot == 1 then

		Window.get_screen_shot("DATA/SAVE/savedata.png", format=FORMAT_PNG)
		$savedata_screenshot = 0
	end
end