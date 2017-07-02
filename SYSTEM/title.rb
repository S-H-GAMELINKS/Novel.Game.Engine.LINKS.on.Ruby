# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�^�C�g����ʏ����\�[�X

#�^�C�g����ʗp�I�u�W�F�N�g�������\�b�h
def title_object

	#�w�i�摜�̓ǂݍ���
	title = Sprite.new(0, 0, Image.load("DATA/BG/TITLE.png"))

	#�}�E�X�p�I�u�W�F�N�g����
	start = Sprite.new(500, 300, Image.new(100, 30, C_DEFAULT))
	load = Sprite.new(500, 350, Image.new(100, 30, C_DEFAULT))
	config = Sprite.new(500, 400, Image.new(100, 30, C_DEFAULT))
	quit = Sprite.new(500, 450, Image.new(100, 30, C_DEFAULT))

	return title, start, load, config, quit
end

#�e��^�C�g�����j���[���ڕ`�惁�\�b�h
def title_menu_draw(font)

	Window.draw_font(500, 300, "START", font)
	Window.draw_font(500, 350, "LOAD", font)
	Window.draw_font(500, 400, "CONFIG", font)
	Window.draw_font(500, 450, "QUIT", font)
end

#title���\�b�h�̒�`
def title(mouse, font, flag, messagebox)

#�e��I�u�W�F�N�g����
title, start, load, config, quit = title_object

	#�`�惋�[�v
	Window.loop do

		#�}�E�X�ʒu�̎擾
		mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

		#�e��I�u�W�F�N�g�`��
		title.draw; mouse.draw;	start.draw; load.draw; config.draw; quit.draw

		#�e��^�C�g�����j���[�̕`��
		title_menu_draw(font)

		#���j���[�I���������\�b�h
		case mouse
		
			#�Q�[���X�^�[�g
			when start
				if Input.mouse_push?(M_LBUTTON) then
					return flag = 1
				end

			#���[�h��ʂ�
			when load
				if Input.mouse_push?(M_LBUTTON) then
					return flag = savedata_menu(font, mouse, messagebox, flag, 1, $lineno)
				end

			#�R���t�B�O��ʂ�
			when config
				if Input.mouse_push?(M_LBUTTON) then
					config(font, mouse, messagebox)
				end

			#�Q�[���I��
			when quit
				if Input.mouse_push?(M_LBUTTON) then
					exit
				end
		end

		#�G�X�P�[�v�L�[�ŏI��
		exit_message(messagebox)
	end
end