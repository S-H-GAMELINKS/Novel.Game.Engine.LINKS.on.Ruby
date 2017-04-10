# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�R���t�B�O�����\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

#config���\�b�h
def config

font = Font.new(26)

#�J�[�\�������ʒu
menu_y = 100

#background = Image.load("DATA/BG/TITLE.png")

	#�`�惋�[�v
	Window.loop do

#		Window.draw(0, 0, background)

		Window.draw_font(100, 100, "BGM����", font, z:4)
		Window.draw_font(100, 150, "SE����", font, z:4)
		Window.draw_font(100, 200, "QUIT", font, z:4)

		Window.draw_font(220, 100, "#{$bgm_vol}", font, z:4)
		Window.draw_font(220, 150, "#{$se_vol}", font, z:4)

		#�J�[�\���̕`��
		Window.draw_font(50, menu_y, "��", font)

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_RIGHT) then

			if menu_y == 100 && $bgm_vol != 230 then
				
				$bgm_vol = $bgm_vol + 10

			end

			if menu_y == 150 && $se_vol != 230 then
				
				$se_vol = $se_vol + 10

			end

		end

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_LEFT) then

			if menu_y == 100 && $bgm_vol != 0 then

				$bgm_vol = $bgm_vol - 10

			end

			if menu_y == 150 && $se_vol != 0 then

				$bgm_vol = $bgm_vol - 10

			end
		end

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_UP) then
			menu_y -= 50

			if menu_y <= 50 then
				menu_y = 200
			end
		end

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_DOWN) then
			menu_y += 50

			if menu_y >= 250 then
				menu_y = 100
			end
		end

		if Input.key_push?(K_RETURN) && menu_y == 200 then

			break

		end

		#�G�X�P�[�v�L�[�ŏI��
		if Input.key_push?(K_ESCAPE) then
			exit
			break
		end

	end

end
