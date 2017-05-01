# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����j���[�����\�[�X

#�Z�[�u�f�[�^�P�̃��[�h
def savedata1_load


	savedata_exist = savedata1_check()
	
	if savedata_exist == 1 then
		#���[�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$choice = File.open("DATA/SAVE/savedata1_choice.txt", "r").read.to_i

		#�X�N���v�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$lineno = File.open("DATA/SAVE/savedata1_lineno.txt", "r").read.to_i
	end
end

#�Z�[�u�f�[�^�Q�̃��[�h
def savedata2_load

	savedata_exist = savedata2_check()
	
	if savedata_exist == 1 then
		#���[�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$choice = File.open("DATA/SAVE/savedata2_choice.txt", "r").read.to_i

		#�X�N���v�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$lineno = File.open("DATA/SAVE/savedata2_lineno.txt", "r").read.to_i
	end
end

#�Z�[�u�f�[�^�R�̃��[�h
def savedata3_load

	savedata_exist = savedata3_check()
	
	if savedata_exist == 1 then
		#���[�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$choice = File.open("DATA/SAVE/savedata3_choice.txt", "r").read.to_i

		#�X�N���v�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$lineno = File.open("DATA/SAVE/savedata3_lineno.txt", "r").read.to_i
	end
end

#savedata_load���\�b�h�̒�`
def savedata_load

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
		Window.draw_font(100, 300, "�Z�[�u�f�[�^�P�����[�h", font)
		Window.draw_font(100, 350, "�Z�[�u�f�[�^�Q�����[�h", font)
		Window.draw_font(100, 400, "�Z�[�u�f�[�^�R�����[�h", font)
		Window.draw_font(100, 450, "QUIT", font)

		#�J�[�\���̕`��
		Window.draw_font(50, menu_y, "��", font)

		#�e��X�N���[���V���b�g�`��
		savedata_screenshot_draw(savedata1_screenshot, savedata2_screenshot, savedata3_screenshot, menu_y)

		#�L�[����֘A
		menu_y = savedata_key(menu_y)

		#�u�Z�[�u�f�[�^�P�����[�h�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 300 then

			#�Z�[�u�f�[�^�P�̃��[�h
			savedata1_load()
			break
		end

		#�u�Z�[�u�f�[�^�Q�����[�h�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 350 then

			#�Z�[�u�f�[�^�Q�̃��[�h
			savedata2_load()
			break
		end

		#�u�Z�[�u�f�[�^�R�����[�h�v��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 400 then

			#�Z�[�u�f�[�^�R�̃��[�h
			savedata3_load()
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
