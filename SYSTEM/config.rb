# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�R���t�B�O�����\�[�X

#�^�C�g����ʗp�I�u�W�F�N�g�������\�b�h
def config_object

	#�w�i�摜�̓ǂݍ���
	title = Sprite.new(0, 0, Image.load("DATA/BG/TITLE.png"))

	#�}�E�X�p�I�u�W�F�N�g���� C_DEFAULT
	bgm_vol_object = Sprite.new(100, 100, Image.new(100, 30, C_DEFAULT))
	se_vol_object = Sprite.new(100, 150, Image.new(100, 30, C_DEFAULT))
	quit = Sprite.new(100, 200, Image.new(100, 30, C_DEFAULT))

	return bgm_vol_object, se_vol_object, quit
end

#�e�퍀�ڂ̕`��
def config_draw(font)

	Window.draw_font(100, 100, "BGM����", font, z:4)
	Window.draw_font(100, 150, "SE����", font, z:4)
	Window.draw_font(100, 200, "QUIT", font, z:4)
	Window.draw_font(220, 100, "#{$bgm_vol}", font, z:4)
	Window.draw_font(220, 150, "#{$se_vol}", font, z:4)
end

#config���\�b�h
def config(font, mouse, messagebox)

	#�e��I�u�W�F�N�g����
	bgm_vol_object, se_vol_object, quit = config_object

	#�`�惋�[�v
	Window.loop do

		#�}�E�X�ʒu�̎擾
		mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

		#�e��I�u�W�F�N�g�̕`��
		bgm_vol_object.draw; se_vol_object.draw; quit.draw

		#�e���ڂ̕`��
		config_draw(font)

		#�e��I�u�W�F�N�g�̏Փ˔���
		case mouse

			when bgm_vol_object
				#BGM���ʒ���
				if Input.mouse_push?(M_LBUTTON) && $bgm_vol != 230 then
					$bgm_vol = $bgm_vol + 10
				elsif Input.mouse_push?(M_RBUTTON) && $bgm_vol != 0 then
					$bgm_vol = $bgm_vol - 10
				end

			when se_vol_object
				#SE���ʒ���
				if Input.mouse_push?(M_LBUTTON) && $se_vol != 230 then
					$se_vol = $se_vol + 10
				elsif Input.mouse_push?(M_RBUTTON) && $se_vol != 0 then
					$se_vol = $se_vol - 10
				end

			when quit
				if Input.mouse_push?(M_LBUTTON) then
					break
				end
		end

		#�G�X�P�[�v�L�[�ŏI��
		exit_message(messagebox)
	end
end
