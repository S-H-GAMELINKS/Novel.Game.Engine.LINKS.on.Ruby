# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����[�v�����\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

#�f�ޓǍ�
require_relative 'game_loop_h'

#script���\�b�h�̒�`
def script

#�t�H���g�T�C�Y�̐ݒ�
font = Font.new(26)

#�e��f�ނ̓ǂݍ���	
se01 = Sound.new("DATA/SE/SE01.wav")
bgm01 = Sound.new("DATA/BGM/BGM01.wav")

#�e��f�ނ̏�����
bg  = Image.new(640, 480, [0, 0, 0, 0])
char  = Image.new(640, 480, [0, 0, 0, 0])
bgm = 0
se = 0

#�E�C���h�E�摜�쐬
window = Image.new(640, 200, [255, 0, 0, 0])

#�X�N���v�g�f�[�^�Ǎ�����
string = ScriptRead.new.read

#���[�g�ϐ��Ǘ�����
root = ScriptRoot.new.root

lineno = 0

choice = 0

#��s���e�L�X�g�f�[�^��`��i�^�O�ɂĕ`�揈�����s���j
string.each_line do |line|

	case line

	#�w�i�摜01�̕`��
	when /bg01/

		bg01 = MaterialLoad_bg.new("BG01")
		bg = bg01.load
		lineno += 1

	#�w�i�摜02�̕`��
	when /bg02/

		bg02 = MaterialLoad_bg.new("BG02")
		bg = bg02.load
		lineno += 1

	#�����G01�̕`��
	when /char01/

		char01 = MaterialLoad_char.new("CHAR01")
		char = char01.load
		lineno += 1

	#�����G02�̕`��
	when /char02/

		char02 = MaterialLoad_char.new("CHAR02")
		char = char02.load
		lineno += 1

	#�����G�̍폜
	when /char_delete/

		char = Image.new(640, 480, [0, 0, 0, 0])
		lineno += 1

	#���ʉ�01�̍Đ�
	when /se01/

		se = se01
		se.set_volume($se_vol, 0)
		se.play
		lineno += 1

	#BGM01�̍Đ�
	when /bgm01/

		bgm = bgm01
		bgm.set_volume($bgm_vol, 0)
		bgm.play
		lineno += 1

	#�L�����N�^�[���̕`��
	when /chara_name/

		#�L�����N�^�[���̕`��
		Window.draw_font(30, 450, line, font, z:4)

	#�I�����̕`��
	when /choice/

		lineno += 1

		bgm.stop

		#�J�[�\���̍���
		menu_y = 350
	
		#�I�����̓ǂݍ���
		case $choice

			#$choice = 1�̎�
			when 1

			choice1 = File.open("DATA/STR/CHOICE/choice1.txt", "r")
			choice2 = File.open("DATA/STR/CHOICE/choice2.txt", "r")
			draw_choice1 = choice1.read
			draw_choice2 = choice2.read

			#$choice = 2�̎�
			when 2

			choice1 = File.open("DATA/STR/CHOICE/choice3.txt", "r")
			choice2 = File.open("DATA/STR/CHOICE/choice4.txt", "r")
			draw_choice1 = choice1.read
			draw_choice2 = choice2.read

			#$choice = 3�̎�
			when 3

			choice1 = File.open("DATA/STR/CHOICE/choice5.txt", "r")
			choice2 = File.open("DATA/STR/CHOICE/choice6.txt", "r")
			draw_choice1 = choice1.read
			draw_choice2 = choice2.read

			else

			end

		#�I�����`��I�u�W�F�N�g�̐���
		choice = ChoiceDraw.new(bg, char, window, draw_choice1, draw_choice2, font)
		
		#�I�����`�惋�[�v
		Window.loop do

			#�e��f�ނ̕`��
			choice.draw_choice

			#�J�[�\���̕`��
			Window.draw_font(150, menu_y, "��", font, z:4)

			#choice1��I�������ۂ̏���
			if Input.key_push?(K_RETURN) && menu_y == 350 then

				if $choice == 1 then
					$choice = 2
					break
				end

				if $choice == 2 then
					$choice = 4
					break
				end

				if $choice == 3 then
					$choice = 6
					break
				end

			end

			#Lchoice2��I�������ۂ̏���
			if Input.key_push?(K_RETURN) && menu_y == 380 then

				if $choice == 1 then
					$choice = 3
					break
				end

				if $choice == 2 then
					$choice = 5
					break
				end

				if $choice == 3 then
					$choice = 7
					break
				end

			end

			#�J�[�\���̃L�[����i���L�[�j
			if Input.key_push?(K_UP) then
				menu_y -= 30

				if menu_y <= 320 then
					menu_y = 380
				end
			end

			#�J�[�\���̃L�[����i���L�[�j
			if Input.key_push?(K_DOWN) then
				menu_y += 30

				if menu_y >= 410 then
					menu_y = 350
				end
			end

			#�o�b�N�X�y�[�X�L�[�ŃQ�[�����j���[���Ăяo��
			if Input.key_push?(K_BACK) then

				#BGM�̍Đ���~
				bgm.stop
				
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
		script_line = ScriptDraw.new(line, bg, char, window, font)

		Window.loop do

			#�X�N���v�g�̕`�恕�e��f�ނ̕`��
			script_line.draw

			#�o�b�N�X�y�[�X�L�[�ŃQ�[�����j���[���Ăяo��
			if Input.key_push?(K_BACK) then
				
				#BGM�̍Đ���~
				bgm.stop
				
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
				File.delete("DATA/SAVE/savedata.png")
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
