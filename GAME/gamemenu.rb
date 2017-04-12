# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����j���[�����\�[�X

#gamemenu���\�b�h�̒�`
def gamemenu

	#�J�[�\���̏����l
	menu_y = 300

	#�t�H���g�T�C�Y��`
	font = Font.new(24)

	#�`�惋�[�v
	Window.loop do

		#�e��Q�[�����j���[�̕`��
		Window.draw_font(500, 250, "TITLE", font)
		Window.draw_font(500, 300, "SAVE", font)
		Window.draw_font(500, 350, "LOAD", font)
		Window.draw_font(500, 400, "CONFIG", font)
		Window.draw_font(500, 450, "QUIT", font)

		#�J�[�\���̕`��
		Window.draw_font(450, menu_y, "��", font)


		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_UP) then
			menu_y -= 50

			if menu_y <= 200 then
				menu_y = 450
			end
		end

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_DOWN) then
			menu_y += 50

			if menu_y >= 500 then
				menu_y = 250
			end
		end

		#TITLE��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 250 then
			$choice = 0
			break
		end

		#SAVE��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 300 then

			#�Z�[�u����
			savedata_save()
		end

		#LOAD��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 350 then

			#���[�h����
			savedata_load()
			break
		end

		#CONFIG��I�񂾍ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 400 then

			#�R���t�B�O����
			config()
		end

		#QUIT��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 450 then
			break
		end

		#�G�X�P�[�v�L�[�������ƃQ�[���I��
		if Input.key_push?(K_ESCAPE) then
			exit
		end
	end
end
