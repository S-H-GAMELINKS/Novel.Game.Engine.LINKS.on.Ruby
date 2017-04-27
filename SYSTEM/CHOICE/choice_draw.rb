# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�I�����`�揈���\�[�X

class ChoiceDraw

	#������
	def initialize(bg = Image.new, char = Image.new, window = 0, choice1 = "choice1", choice2 = "choice2", font = Font.new(26))
		@bg = bg
		@char = char
		@window = window
		@choice1 = choice1
		@choice2 = choice2
		@font = font
	end

	def load_choice1

		#�I�����̓ǂݍ���
		case $choice

			#$choice = 1�̎�
			when 1
				choice1 = File.open("DATA/STR/CHOICE/choice1.txt", "r")
				@draw_choice1 = choice1.read

			#$choice = 2�̎�
			when 2
				choice1 = File.open("DATA/STR/CHOICE/choice3.txt", "r")
				@draw_choice1 = choice1.read

			#$choice = 3�̎�
			when 3
				choice1 = File.open("DATA/STR/CHOICE/choice5.txt", "r")
				@draw_choice1 = choice1.read
		end

		return @draw_choice1
	end

	def load_choice2

		#�I�����̓ǂݍ���
		case $choice

			#$choice = 1�̎�
			when 1
				choice2 = File.open("DATA/STR/CHOICE/choice2.txt", "r")
				@draw_choice2 = choice2.read

			#$choice = 2�̎�
			when 2
				choice2 = File.open("DATA/STR/CHOICE/choice4.txt", "r")
				@draw_choice2 = choice2.read

			#$choice = 3�̎�
			when 3
				choice2 = File.open("DATA/STR/CHOICE/choice6.txt", "r")
				@draw_choice2 = choice2.read
		end

		return @draw_choice2
	end

	#�I�������̕`��
	def draw_choice

		#�e��f�ނ̕`��
		Window.draw(0, 0, @bg, 1)
		Window.draw(150, 0, @char, 2)
		Window.draw(0, 350, @window, 3)

		#�I�����̕`��
		Window.draw_font(180, 350, @choice1, @font, z:4)
		Window.draw_font(180, 380, @choice2, @font, z:4)
	end
end
