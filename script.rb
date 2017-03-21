# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�X�N���v�g�����\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

#gamemenu���\�b�h�̓ǂݍ���
require_relative 'gamemenu'

#script���\�b�h�̒�`
def script

#�t�H���g�T�C�Y�̐ݒ�
font = Font.new(26)

#�e��f�ނ̓ǂݍ���	
bg01 = Image.load("DATA/BG/BG01.png")
bg02 = Image.load("DATA/BG/BG02.png")
char01 = Image.load("DATA/CHAR/CHAR01.png")
char02 = Image.load("DATA/CHAR/CHAR02.png")
se01 = Sound.new("DATA/SE/SE01.wav")
bgm01 = Sound.new("DATA/BGM/BGM01.wav")
	
#�`��p�ϐ��̒�`
bg = Image.new(640, 480, [0, 0, 0, 0])
char = Image.new(640, 480, [0, 0, 0, 0])
bgm = 0
se = 0

#�E�C���h�E�摜�쐬
window = Image.new(640, 200, [255, 0, 0, 0])

#�ȉ��A�e�L�X�g�f�[�^�̓ǂݍ���
if $choice == 1 then
	text = File.open("DATA/STR/MAIN.txt", "r")
	root = 1
end

if $choice == 2 then
	text = File.open("DATA/STR/A.txt", "r")
	root = 2
end

if $choice == 3 then
	text = File.open("DATA/STR/B.txt", "r")
	root = 3
end

if $choice == 4 then
	text = File.open("DATA/STR/C.txt", "r")
	root = 4
end

if $choice == 5 then
	text = File.open("DATA/STR/D.txt", "r")
	root = 5
end

if $choice == 6 then
	text = File.open("DATA/STR/E.txt", "r")
	root = 6
end

if $choice == 7 then
	text = File.open("DATA/STR/F.txt", "r")
	root = 7
end

string = text.read

lineno = 0

choice = 0

#��s���e�L�X�g�f�[�^��`��i�^�O�ɂĕ`�揈�����s���j
string.each_line do |line|

	case line

	#�w�i�摜01�̕`��
	when /bg01/

		bg = bg01
		lineno += 1

	#�w�i�摜02�̕`��
	when /bg02/

		bg = bg02
		lineno += 1

	#�����G01�̕`��
	when /char01/

		char = char01
		lineno += 1

	#�����G02�̕`��
	when /char02/

		char = char02
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

		#�I�����`�惋�[�v
		Window.loop do

			#�E�C���h�E�`��
			Window.draw(0, 350, window, 3)

			#�w�i�摜�������G�摜�̕`��
			Window.draw(0, 0, bg, 1)
 			Window.draw(150, 0, char, 2)

			#�I�����̕`��
			Window.draw_font(180, 350, draw_choice1, font, z:4)
			Window.draw_font(180, 380, draw_choice2, font, z:4)

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

		Window.loop do

			#��������20�����ȉ��Ȃ��s�ŕ\��
			if line.length <= 20 then
				Window.draw(0, 0, bg, 1)
				Window.draw(150, 0, char, 2)
				Window.draw(0, 350, window, 3)
				Window.draw_font(30, 350, line, font, z:4)
			end

			#��������40�����ȏ�Ȃ��s�ŕ\��
			if line.length >= 21 then
				line1 = line.slice(0..20)
				line2 = line.slice(21..40)
 				Window.draw(0, 0, bg, 1)
	 			Window.draw(150, 0, char, 2)
  				Window.draw(0, 350, window, 3)
				Window.draw_font(30, 350, line1, font, z:4)
				Window.draw_font(30, 380, line2, font, z:4)
			end

			#��������60�����ȏ�Ȃ�O�s�ŕ\��
			if line.length >= 41 then
				line1 = line.slice(0..20)
				line2 = line.slice(21..40)
				line3 = line.slice(41..60)
				Window.draw(0, 0, bg, 1)
	 			Window.draw(150, 0, char, 2)
  				Window.draw(0, 350, window, 3)
				Window.draw_font(30, 350, line1, font, z:4)
				Window.draw_font(30, 380, line2, font, z:4)
				Window.draw_font(30, 410, line3, font, z:4)
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
