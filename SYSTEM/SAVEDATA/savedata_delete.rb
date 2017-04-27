# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Z�[�u�f�[�^�폜�����\�[�X

#�Z�[�u�f�[�^�P���폜
def savedata1_delete

	#�Z�[�u�f�[�^�P�̍폜
	File.delete("DATA/SAVE/savedata1_choice.txt")
	File.delete("DATA/SAVE/savedata1_lineno.txt")
	File.delete("DATA/SAVE/savedata1.png")
end

#�Z�[�u�f�[�^�Q���폜
def savedata2_delete

	#�Z�[�u�f�[�^�Q�̍폜
	File.delete("DATA/SAVE/savedata2_choice.txt")
	File.delete("DATA/SAVE/savedata2_lineno.txt")
	File.delete("DATA/SAVE/savedata2.png")
end

#�Z�[�u�f�[�^�R���폜
def savedata3_delete

	#�Z�[�u�f�[�^�R�̍폜
	File.delete("DATA/SAVE/savedata3_choice.txt")
	File.delete("DATA/SAVE/savedata3_lineno.txt")
	File.delete("DATA/SAVE/savedata3.png")

end

#savedata_save���\�b�h�̒�`
def savedata_delete

	#�t�H���g�T�C�Y��`
	font = Font.new(24)

	#�J�[�\���̏����l
	menu_y = 300

	#�X�N���[���V���b�g�̓Ǎ�
	savedata1_screenshot = savedata1_screenshot_load()
	savedata2_screenshot = savedata2_screenshot_load()
	savedata3_screenshot = savedata3_screenshot_load()

	#�`�惋�[�v
	Window.loop do

		#�e��Q�[�����j���[�̕`��
		Window.draw_font(100, 300, "�Z�[�u�f�[�^�P���폜", font)
		Window.draw_font(100, 350, "�Z�[�u�f�[�^�Q���폜", font)
		Window.draw_font(100, 400, "�Z�[�u�f�[�^�R���폜", font)
		Window.draw_font(100, 450, "QUIT", font)

		#�J�[�\���̕`��
		Window.draw_font(50, menu_y, "��", font)

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

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_UP) then
			menu_y -= 50

			if menu_y <= 250 then
				menu_y = 450
			end
		end

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_DOWN) then
			menu_y += 50

			if menu_y >= 500 then
				menu_y = 300
			end
		end

		#�u�Z�[�u�f�[�^�P�ɃZ�[�u�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 300 then
			#�Z�[�u�f�[�^�P�ɃZ�[�u
			savedata1_delete()
			break
		end

		#�u�Z�[�u�f�[�^�Q�ɃZ�[�u�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 350 then
			#�Z�[�u�f�[�^�Q�ɃZ�[�u
			savedata2_delete()
			break
		end

		#�u�Z�[�u�f�[�^�R�ɃZ�[�u�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 400 then
			#�Z�[�u�f�[�^�R�ɃZ�[�u
			savedata3_delete()
			break
		end

		#�uQUIT�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 450 then
			break
		end

		#�G�X�P�[�v�L�[�������ƃQ�[���I��
		if Input.key_push?(K_ESCAPE) then
			exit
			break
		end
	end
end
