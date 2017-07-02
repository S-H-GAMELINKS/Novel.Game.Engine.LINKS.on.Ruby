# encoding: shift_jis

#�X�N���v�g�`�惁�\�b�h
def script_line_draw(line, font)

	#�����ʒu�̏�����
	x = 0; y = 0

	line.each_char do |word|

		Window.draw_font(30 + x, 350 + y, word, font, z:4)

		#�����ʒu����i�߂�
		x += 30

		if x >= 600 then
			x = 0
			y += 30
		end
	end
end

#�X�N���v�g�`��N���X
class Script

	#������
	def initialize(text = "")
		@bg = Sprite.new(0, 350, Image.new(640, 480, C_DEFAULT))
		@char = Sprite.new(0, 350, Image.new(640, 480, C_DEFAULT))
		@bgm = nil
		@se = nil
		@window = Sprite.new(0, 350, Image.new(640, 480, C_BLACK))
	end

	#�X�N���v�g�Ǎ�
	def read(flag)

		case flag
			#���C�����[�g
			when 1
				text = File.open("DATA/STR/MAIN.txt", "r")
			#A���[�g
			when 2
				text = File.open("DATA/STR/A.txt", "r")
			#B���[�g
			when 3
				text = File.open("DATA/STR/B.txt", "r")
			#C���[�g
			when 4
				text = File.open("DATA/STR/C.txt", "r")
			#D���[�g
			when 5
				text = File.open("DATA/STR/D.txt", "r")
			#E���[�g
			when 6
				text = File.open("DATA/STR/E.txt", "r")
			#F���[�g
			when 7
				text = File.open("DATA/STR/F.txt", "r")
		end

		return @string = text.read
	end

	#�I�����̓Ǎ�
	def choice_read(flag)
		
		#�I�����̓ǂݍ���
		choice1 = File.open("DATA/STR/CHOICE/choice#{flag*2 - 1}.txt", "r")
		choice2 = File.open("DATA/STR/CHOICE/choice#{flag*2}.txt", "r")

		return choice1.read, choice2.read
	end

	#�I��������
	def choice(flag, font, mouse, messagebox, lineno)

		#�e��I�����̓Ǎ�
		choice1, choice2 = choice_read(flag)

		#�I�����N���b�N����p
		choice1_check = Sprite.new(180, 350, Image.new(300, 30, C_DEFAULT))
		choice2_check = Sprite.new(180, 380, Image.new(300, 30, C_DEFAULT))

		temp_lineno = $lineno
		temp_flag = flag

		#�I�����`�惋�[�v
		Window.loop do
			#�}�E�X�ʒu�̎擾
			mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

			#�I�����̕`��
			Window.draw_font(180, 350, choice1, font, z:4)
			Window.draw_font(180, 380, choice2, font, z:4)
			choice1_check.draw; choice2_check.draw

			#�e��f�ނ̕`��
			@bg.draw; @char.draw; @window.draw

			#�I��������
			case mouse
				when choice1_check
					if Input.mouse_push?(M_LBUTTON)then
						@bgm.stop
						$lineno = 0
						return flag = flag * 2
					end
				when choice2_check
					if Input.mouse_push?(M_LBUTTON)then
						@bgm.stop
						$lineno = 0
						return flag = flag * 2 + 1
					end
			end

			#�o�b�N�X�y�[�X�L�[�ŃQ�[�����j���[���Ăяo��
			temp_flag = gamemenu_call(messagebox, flag, font, mouse, lineno)

			#�G�X�P�[�v�L�[�ŃQ�[���I��
			exit_message(messagebox)

			#�Z�[�u�f�[�^�ǂݍ��ݎ��̏���(flag�ϐ����قȂ�ꍇ)
			if  temp_lineno != $lineno && temp_flag != flag then
				return temp_flag
			end

			#�Z�[�u�f�[�^�ǂݍ��ݎ��̏���(flag�ϐ��������ꍇ)
			if temp_flag == flag then
				return flag
			end
		end
	end

	#������Ɗe��f�ނ̕`��
	def draw(font, messagebox, flag, mouse)

		lineno = 0

		@string.each_line do |line|

			case line
				when /char\d\d/
					line.chomp!
					@char = Sprite.new(150, 0, Image.load("DATA/CHAR/#{line}.png"))
					line.gsub!(/char\d\d/, "")
				when /bg\d\d/
					line.chomp!
					@bg = Sprite.new(0, 0, Image.load("DATA/BG/#{line}.png"))
					line.gsub!(/bg\d\d/, "")
				when /bgm\d\d/
					line.chomp!
					@bgm = Sound.new("DATA/BGM/#{line}.wav"); @bgm.set_volume($bgm_vol, 0).play
					line.gsub!(/bgm\d\d/, "")
				when /se\d\d/
					line.chomp!
					@se = Sound.new("DATA/SE/#{line}.wav"); @se.set_volume($se_vol, 0).play
					line.gsub!(/se\d\d/, "")
				when /char_delete/
					line.chomp!
					@char = Sprite.new(150, 0, Image.new(640, 480, C_DEFAULT))
					line.gsub!(/char_delete/, "")
				when /choice/
					line.chomp!
					line.gsub!(/choice/, "")
					flag = choice(flag, font, mouse, messagebox, lineno)
					return flag
				when /EOF/
					line.gsub!(/EOF/, "")
					exit
				else
					lineno += 1

					temp_lineno = $lineno
					temp_flag = flag

					if lineno >= $lineno then

						Window.loop do

							@bg.draw; @char.draw; @window.draw

							script_line_draw(line, font)

							#���N���b�N�Ŏ��̕�������Ăяo��
							if Input.mouse_push?(M_LBUTTON); break; end

							#�Q�[�����j���[�Ăяo��
							temp_flag = gamemenu_call(messagebox, flag, font, mouse, lineno)

							#�G�X�P�[�v�L�[�ŏI��
							exit_message(messagebox)

							#�Z�[�u�f�[�^�ǂݍ��ݎ��̏���(flag�ϐ����قȂ�ꍇ)
							if  temp_lineno != $lineno && temp_flag != flag then
								return temp_flag
							end

							#�Z�[�u�f�[�^�ǂݍ��ݎ��̏���(flag�ϐ����قȂ�ꍇ)
							if temp_flag == flag then
								return flag
							end
						end
					end
				end	
		end
	end
end