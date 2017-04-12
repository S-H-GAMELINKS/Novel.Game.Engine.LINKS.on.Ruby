# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����[�v�����\�[�X

#script���\�b�h�̒�`
def script

#�X�N���v�g�f�[�^�Ǎ�����
string = ScriptRead.new.read

#���[�g�ϐ��Ǘ�����
root = ScriptRoot.new.root

lineno = 0
choice = 0

#��s���e�L�X�g�f�[�^��`��i�^�O�ɂĕ`�揈�����s���j
string.each_line do |line|

	case line

	#�����G����
	when /\Achar\d\d/
		$char = ScriptSwitch_char.new(line).load_char
		lineno += 1

	#�w�i�摜����
	when /\Abg\d\d/
		$bg = ScriptSwitch_bg.new(line).load_bg
		lineno += 1

	#���ʉ�����
	when /\Ase\d\d/
		$se = ScriptSwitch_se.new(line).load_se
		lineno += 1

	#BGM����
	when /\Abgm\d\d/
		$bgm = ScriptSwitch_bgm.new(line).load_bgm
		lineno += 1

	#�����G�̍폜
	when /char_delete/
		char = Image.new(640, 480, [0, 0, 0, 0])
		lineno += 1

	#�I�����̕`��
	when /choice/

		lineno += 1
		$bgm.stop

		choice1 = ChoiceDraw.new(0, 0, 0, 0, 0, 0).load_choice1
		choice2 = ChoiceDraw.new(0, 0, 0, 0, 0, 0).load_choice2
		
		#�J�[�\���̍���
		$menu_y = 350
	
		#�I�����`��I�u�W�F�N�g�̐���
		choice = ChoiceDraw.new($bg, $char, $window, choice1, choice2, $font)
		choice_keymove = ChoiceKeyMove.new($menu_y)

		choice_temp = $choice

		#�I�����`�惋�[�v
		Window.loop do

			#�I�����̕`��
			choice.draw_choice

			#�I�����̃L�[����
			choice_keymove.key_move

			#�J�[�\���̕`��
			Window.draw_font(150, $menu_y, "��", $font, z:4)

			#�I������I�񂾂��ƃ��[�v�𔲂���
			if choice_temp != $choice then
				break
			end

			#�o�b�N�X�y�[�X�L�[�ŃQ�[�����j���[���Ăяo��
			if Input.key_push?(K_BACK) then

				#BGM�̍Đ���~
				$bgm.stop
				
				#���[�g�Ǘ��ϐ��̋L��
				choice = $choice

				#�X�N���v�g�s���̋L��
				$lineno = lineno

				#�Q�[�����j���[�̌Ăяo��
				gamemenu()

				#�s�����Ăяo��
				lineno = $lineno
			end

			#�G�X�P�[�v�L�[�ŃQ�[���I��
			if Input.key_push?(K_ESCAPE) then

				#�Z�[�u�f�[�^�p�X�N���[���V���b�g�̍폜
				if File.exist?("DATA/SAVE/savedata.png") then
					File.delete("DATA/SAVE/savedata.png")
				end

				exit
			end
		end

	#�Q�[���I���^�O
	when /EOF/
		exit

	#��s���Ƃɕ�����̕`��
	else 

	lineno += 1

	if lineno >= $lineno then

		#�X�N���v�g���e��f�ޕ`��p
		script_line = ScriptDraw.new(line, $bg, $char, $window, $font)

		Window.loop do

			#�X�N���v�g�̕`�恕�e��f�ނ̕`��
			script_line.draw

			#�o�b�N�X�y�[�X�L�[�ŃQ�[�����j���[���Ăяo��
			if Input.key_push?(K_BACK) then
				
				#BGM�̍Đ���~
				$bgm.stop
				
				#���[�g�Ǘ��ϐ��̋L��
				choice = $choice

				#�X�N���v�g�s���̋L��
				$lineno = lineno

				#�Z�[�u�f�[�^�p�̃X�N���[���V���b�g�ϐ���ON��
				$savedata_screenshot = 1

				#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾
				savedata_screenshot()

				#�Q�[�����j���[�̌Ăяo��
				gamemenu()

				#�s�����Ăяo��
				lineno = $lineno
			end
	
			#�G�X�P�[�v�L�[�ŃQ�[���I��
			if Input.key_push?(K_ESCAPE) then

				#�Z�[�u�f�[�^�p�X�N���[���V���b�g�̍폜
				if File.exist?("DATA/SAVE/savedata.png") then
					File.delete("DATA/SAVE/savedata.png")
				end

				exit
			end

			#�G���^�[�L�[�Ŏ��̕�������Ăяo��
			if Input.key_push?(K_RETURN) then
				break
			end
		end
	end
	end

	#�Q�[�����j���[�N����ɕ`���ʂɖ߂�
	if root == choice && root == $choice then
		lineno = $lineno
		break
	end

	#�Z�[�u�f�[�^�Ǎ����Ƀ��[�v�𔲂��o���B
	if root != $choice then
		lineno = 0
		$lineno = 0
		break
	end
end

end
