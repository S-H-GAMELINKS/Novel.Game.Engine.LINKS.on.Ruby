# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����j���[�����\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

#gamemenu���\�b�h�̒�`
def gamemenu

#�t�H���g�T�C�Y��`
font = Font.new(24)

#�J�[�\���̏����l
menu_y = 300

#�w�i�摜�̓ǂݍ���
title_background = Image.load("DATA/BG/TITLE.png")

#�`�惋�[�v
Window.loop do

	#�w�i�摜�̕`��
	Window.draw(0, 0, title_background)

	#�e��Q�[�����j���[�̕`��
	Window.draw_font(500, 300, "SAVE", font)
	Window.draw_font(500, 350, "LOAD", font)
	Window.draw_font(500, 400, "QUIT", font)

	#�J�[�\���̕`��
	Window.draw_font(450, menu_y, "��", font)

	#�J�[�\���̃L�[����i���L�[�j
	if Input.key_push?(K_UP) then
		menu_y -= 50

		if menu_y <= 250 then
			menu_y = 400
		end
	end

	#�J�[�\���̃L�[����i���L�[�j
	if Input.key_push?(K_DOWN) then
		menu_y += 50

		if menu_y >= 450 then
			menu_y = 300
		end
	end

	#SAVE��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 300 then

		#���[�g�Ǘ��ϐ��̏������݁i�Z�[�u�f�[�^�̏�������)
		File.write("DATA/SAVE/savedata_choice.txt", $choice.to_s)

		#�X�N���v�g�Ǘ��ϐ��̏������݁i�Z�[�u�f�[�^�̏�������)
		File.write("DATA/SAVE/savedata_lineno.txt", $lineno.to_s)

		break
	end

	#LOAD��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 350 then

		#���[�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$choice = File.open("DATA/SAVE/savedata_choice.txt", "r").read.to_i

		#�X�N���v�g�Ǘ��ϐ��ւ̑���i�Z�[�u�f�[�^�̓ǂݍ���)
		$lineno = File.open("DATA/SAVE/savedata_lineno.txt", "r").read.to_i

		break
	end

	#QUIT��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 400 then
		exit
		break
	end

	#�G�X�P�[�v�L�[�������ƃQ�[���I��
	if Input.key_push?(K_ESCAPE) then
		exit
		break
	end

end

end
