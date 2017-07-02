# encoding: shift_jis

#�Q�[�����j���[�p�I�u�W�F�N�g����
def gamemenu_object

	menu = Sprite.new(0, 0, Image.load("DATA/BG/GAMEMENU.png"))
	title_back = Sprite.new(45, 50, Image.new(100, 30, C_DEFAULT))
	save = Sprite.new(45, 110, Image.new(100, 30, C_DEFAULT))
	load = Sprite.new(45, 170, Image.new(100, 30, C_DEFAULT))
	delete = Sprite.new(45, 230, Image.new(100, 30, C_DEFAULT))
	config = Sprite.new(45, 290, Image.new(100, 30, C_DEFAULT))
	back = Sprite.new(45, 350, Image.new(100, 30, C_DEFAULT))
	quit = Sprite.new(45, 410, Image.new(100, 30, C_DEFAULT))

	return menu, title_back, save, load, delete, config, back, quit
end

#�e��Q�[�����j���[���ڕ`�惁�\�b�h
def game_menu_draw(font)

	Window.draw_font(45, 50, "TITLE", font)
	Window.draw_font(45, 110, "SAVE", font)
	Window.draw_font(45, 170, "LOAD", font)
	Window.draw_font(45, 230, "DELETE", font)
	Window.draw_font(45, 290, "CONFIG", font)
	Window.draw_font(45, 350, "BACK", font)
	Window.draw_font(45, 410, "QUIT", font)
end

#�Q�[�����j���[���\�b�h
def gamemenu(messagebox, flag, font, mouse, lineno)

	#�e�탁�j���[�{�^�����}�E�X�p�I�u�W�F�N�g����
	menu, title_back, save, load, delete, config, back, quit = gamemenu_object

	Window.loop do

		#�}�E�X�ʒu�̎擾
		mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

		#�e�탁�j���[�̕`��
		menu.draw; title_back.draw; save.draw; load.draw; delete.draw; config.draw; back.draw; quit.draw

		#�e�Q�[�����j���[���ڕ`��
		game_menu_draw(font)

		#�e��I�u�W�F�N�g�̏Փ˔���
		case mouse

			when title_back
				Window.draw_font(0, 450, "�^�C�g���ɖ߂�܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("�^�C�g���ɖ߂�܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						return flag = 0
					end
				end

			when save
				Window.draw_font(0, 450, "�Z�[�u���܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("�Z�[�u���܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						savedata_menu(font, mouse, messagebox, flag, 0, lineno)
					end
				end

			when load
				Window.draw_font(0, 450, "���[�h���܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("���[�h���܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						return flag = savedata_menu(font, mouse, messagebox, flag, 1, lineno)
					end
				end

			when delete
				Window.draw_font(0, 450, "�Z�[�u�f�[�^���폜���܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("�Z�[�u�f�[�^���폜���܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						savedata_menu(font, mouse, messagebox, flag, 2, lineno)
					end
				end

			when config
				Window.draw_font(0, 450, "�ݒ��ύX���܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("�ݒ��ύX���܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						config(font, mouse, messagebox)
					end
				end

			when back
				Window.draw_font(0, 450, "�Q�[���ɖ߂�܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("�Q�[���ɖ߂�܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						return flag
					end
				end

			when quit
				Window.draw_font(0, 450, "�Q�[�����I�����܂�", font, color:C_BLACK, z:4)

				#���N���b�N���̏���
				if Input.mouse_push?(M_LBUTTON) then
					#�u�͂��v�������ƏI��
					if messagebox.Popup("�Q�[�����I�����܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
						exit
					end
				end
		end

		#�E�N���b�N���̏���
		if Input.mouse_push?(M_RBUTTON) then
			#�u�͂��v�������ƏI��
			if messagebox.Popup("�Q�[���ɖ߂�܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then
				return flag
			end
		end

		#�G�X�P�[�v�L�[�ŏI��
		exit_message(messagebox)
	end
end

#�Q�[�����j���[�Ăяo�����\�b�h
def gamemenu_call(messagebox, flag, font, mouse, lineno)

	#�E�N���b�N���̏���
	if Input.mouse_push?(M_RBUTTON) then
		#�u�͂��v�������ƏI��
		if messagebox.Popup("�Q�[�����j���[�Ɉڍs���܂����H", 10, "�m�x���Q�[���G���W���uLINKS�v on Ruby", 4 + 32 ) == 6 then

			savedata_screenshot_flag = 1
			#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾
			savedata_screenshot_flag = savedata_screenshot(savedata_screenshot_flag)
			flag = gamemenu(messagebox, flag, font, mouse, lineno)
			return flag
		end
	end
end