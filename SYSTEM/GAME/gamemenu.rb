# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����j���[�����\�[�X

#gamemenu���\�b�h�̒�`
def gamemenu

	#�J�[�\���̏����l
	menu_y = 200

	#�t�H���g�T�C�Y��`
	font = Font.new(24)

	#�`�惋�[�v
	Window.loop do

		#�e��Q�[�����j���[�̕`��
		Window.draw_font(500, 200, "TITLE", font)
		Window.draw_font(500, 250, "SAVE", font)
		Window.draw_font(500, 300, "LOAD", font)
		Window.draw_font(500, 350, "DELETE", font)
		Window.draw_font(500, 400, "CONFIG", font)
		Window.draw_font(500, 450, "QUIT", font)

		#�J�[�\���̕`��
		Window.draw_font(450, menu_y, "��", font)

		#�J�[�\���̃L�[����֘A
		menu_y = gamemenu_key(menu_y)

		#�e�탁�j���[��ʑI�����̏���
		gamemenu_choice(menu_y)

		#QUIT��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 450 then
			break
		end

		#�ϐ�$choice��0�Ȃ�΃��[�v�𔲂���
		if $choice == 0 then
			break
		end
		
		#�G�X�P�[�v�L�[�������ƃQ�[���I��
		if Input.key_push?(K_ESCAPE) then
			exit
		end
	end
end
