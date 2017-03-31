# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����j���[�����\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

#�Z�[�u���������̌Ăяo��
require_relative 'savedata_save'

#���[�h���������̌Ăяo��
require_relative 'savedata_load'

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

		#�Z�[�u����
		savedata_save()
		break
	end

	#LOAD��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 350 then

		#���[�h����
		savedata_load()
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
