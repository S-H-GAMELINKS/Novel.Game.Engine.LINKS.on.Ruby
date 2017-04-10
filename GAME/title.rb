# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�^�C�g�������\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

#�R���t�B�O�����̌Ăяo��
require_relative 'CONFIG/config'

#���[�h���������̌Ăяo��
require_relative 'SAVE_LOAD/savedata_load'

#title���\�b�h�̒�`
def title

#���j���[�J�[�\���̏����l
menu_y = 300

#�t�H���g�T�C�Y
font = Font.new(24)

#�w�i�摜�̓ǂݍ���
title_background = Image.load("DATA/BG/TITLE.png")

#�`�惋�[�v
Window.loop do

	#�w�i�`��
	Window.draw(0, 0, title_background)

	#�e��^�C�g�����j���[�̕`��
	Window.draw_font(500, 300, "START", font)
	Window.draw_font(500, 350, "LOAD", font)
	Window.draw_font(500, 400, "CONFIG", font)
	Window.draw_font(500, 450, "QUIT", font)

	#�J�[�\���̕`��
	Window.draw_font(450, menu_y, "��", font)

	#�J�[�\���̃L�[����i���L�[�j
	if Input.key_push?(K_UP) then
		menu_y = menu_y - 50

		if menu_y <= 250 then
			menu_y = 450
		end
	end

	#�J�[�\���̃L�[����i���L�[�j
	if Input.key_push?(K_DOWN) then
		menu_y = menu_y + 50

		if menu_y >= 500 then
			menu_y = 300
		end
	end

	#START��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 300 then

		#���[�g�Ǘ��ϐ��֐��l��n���A���[�v�𔲂���
		$choice = 1
		break
	end

	#LOAD��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 350 then

		#���[�h����
		savedata_load()
	end

	#CONFIG��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 400 then
		
		#�R���t�B�O��ʂ̌Ăяo��
		config()
	end

	#QUIT��I�������ۂ̏���
	if Input.key_push?(K_RETURN) && menu_y == 450 then
		Window.close
		exit
		break
	end

	#�G�X�P�[�v�L�[�ŏI��
	if Input.key_push?(K_ESCAPE) then
		exit
		break
	end

end

end
