# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Z�[�u�f�[�^�p�X�N���[���V���b�g�`�揈���\�[�X

def savedata_screenshot_draw(savedata1_screenshot, savedata2_screenshot, savedata3_screenshot, menu_y)

	if menu_y == 300 then

		#�Z�[�u�f�[�^�摜�̕`��
		Window.draw_scale(100, -100, savedata1_screenshot, 0.5, 0.5, 1)
	end

	if menu_y == 350 then

		#�Z�[�u�f�[�^�摜�̕`��
		Window.draw_scale(100, -100, savedata2_screenshot, 0.5, 0.5, 1)
	end

	if menu_y == 400 then

		#�Z�[�u�f�[�^�摜�̕`��
		Window.draw_scale(100, -100, savedata3_screenshot, 0.5, 0.5, 1)
	end
end