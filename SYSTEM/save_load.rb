# encoding: shift_jis

#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾
def savedata_screenshot(savedata_screenshot_flag)

	#�Z�[�u�f�[�^�p�̃X�N���[���V���b�g
	if savedata_screenshot_flag == 1 then

		Window.get_screen_shot("DATA/SAVE/savedata.png", format=FORMAT_PNG)
		return savedata_screenshot_flag = 0
	end
end

#�Z�[�u�f�[�^�p�X�N���[���V���b�g�̓Ǎ�
def savedata_screenshot_load

	i = 0

	savedata_screenshot = Array.new(3)

	3.times do

		if File.exist?("DATA/SAVE/savedata#{i + 1}.png") then
			savedata_screenshot[i] = Image.load("DATA/SAVE/savedata#{i + 1}.png")
		else
			savedata_screenshot[i] = Image.new(640, 480, [0, 0, 0, 0])
		end

		i += 1
	end

	return savedata_screenshot[0], savedata_screenshot[1], savedata_screenshot[2]
end

#�Z�[�u�f�[�^�̃��[�h
def savedata_load(number)
	
	#�Z�[�u�f�[�^�̗L���`�F�b�N
	if File.exist?("DATA/SAVE/savedata#{number}.png") then
		flag = File.open("DATA/SAVE/savedata#{number}_flag.txt", "r").read.to_i
		$lineno = File.open("DATA/SAVE/savedata#{number}_lineno.txt", "r").read.to_i
		return flag
	else
		#load_error_message���o���\��
	end
end

#�Z�[�u�f�[�^�ɃZ�[�u
def savedata_save(number, flag, lineno)

	#���[�g�Ǘ��ϐ��̏������݁i�Z�[�u�f�[�^�̏�������)
	File.write("DATA/SAVE/savedata#{number}_flag.txt", flag.to_s)
	File.write("DATA/SAVE/savedata#{number}_lineno.txt", lineno.to_s)
	File.rename("DATA/SAVE/savedata.png", "DATA/SAVE/savedata#{number}.png")
end

#�Z�[�u�f�[�^���폜
def savedata_delete(number)

	#�Z�[�u�f�[�^�̗L���`�F�b�N
	if File.exist?("DATA/SAVE/savedata#{number}.png") then
		#�Z�[�u�f�[�^�̍폜
		File.delete("DATA/SAVE/savedata#{number}_flag.txt")
		File.delete("DATA/SAVE/savedata#{number}_lineno.txt")
		File.delete("DATA/SAVE/savedata#{number}.png")
	else
		#delete_error_message���o���\��
	end
end

#�Z�[�u�f�[�^�`��p�I�u�W�F�N�g����
def savedata_object

	savedata1 =  Sprite.new(100, 300, Image.new(250, 30, C_DEFAULT))
	savedata2 =  Sprite.new(100, 350, Image.new(250, 30, C_DEFAULT))
	savedata3 =  Sprite.new(100, 400, Image.new(250, 30, C_DEFAULT))
	back = Sprite.new(100, 450, Image.new(200, 300, C_DEFAULT))

	return savedata1, savedata2, savedata3, back
end

#���j���[��ʂ̕`�惁�\�b�h
def savedata_menu_draw(font, mouse, savedata1, savedata2, savedata3, back, string)

	#���[�h�p�I�u�W�F�N�g
	savedata1.draw
	savedata2.draw
	savedata3.draw
	mouse.draw

	#�e��Q�[�����j���[�̕`��
	Window.draw_font(100, 300, "�Z�[�u�f�[�^�P" + "#{string}" , font)
	Window.draw_font(100, 350, "�Z�[�u�f�[�^�Q" + "#{string}", font)
	Window.draw_font(100, 400, "�Z�[�u�f�[�^�R" + "#{string}", font)
	Window.draw_font(100, 450, "BACK", font)
end

#savedata_menu���\�b�h�̒�`
def savedata_menu(font, mouse, messagebox, flag, number, lineno)
	
	#�e��`��p�I�u�W�F�N�g����
	savedata1, savedata2, savedata3, back = savedata_object
	savedata1_screenshot, savedata2_screenshot, savedata3_screenshot = savedata_screenshot_load

	if number == 1 then
		string = "���[�h"
	elsif number == 0 then
		string = "�Z�[�u"
	else
		string = "�폜"
	end

	#�`�惋�[�v
	Window.loop do

		#�}�E�X�ʒu�̎擾
		mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

		#�Z�[�u�f�[�^�����̃��j���[�`��
		savedata_menu_draw(font, mouse, savedata1, savedata2, savedata3, back, string)

		case mouse

			when savedata1
				#�Z�[�u�f�[�^�摜�̕`��
				Window.draw_scale(100, -100, savedata1_screenshot, 0.5, 0.5, 1)

				if Input.mouse_push?(M_LBUTTON) then
					if messagebox.Popup("�Z�[�u�f�[�^�P��#{string}���܂����H", 10, "DXRuby ADV�T���v��", 4 + 32 ) == 6 then
						if string == "���[�h" then
							flag = savedata_load(1); return flag
						elsif string == "�Z�[�u" then
							savedata_save(1, flag, lineno)
						else
							savedata_delete(1)
						end
					end
				end

			when savedata2
				#�Z�[�u�f�[�^�摜�̕`��
				Window.draw_scale(100, -100, savedata2_screenshot, 0.5, 0.5, 1)

				if Input.mouse_push?(M_LBUTTON) then
					if messagebox.Popup("�Z�[�u�f�[�^�Q��#{string}���܂����H", 10, "DXRuby ADV�T���v��", 4 + 32 ) == 6 then
						if string == "���[�h" then
							flag = savedata_load(2); return flag
						elsif string == "�Z�[�u" then
							savedata_save(2, flag, lineno)
						else
							savedata_delete(2)
						end
					end
				end

			when savedata3
				#�Z�[�u�f�[�^�摜�̕`��
				Window.draw_scale(100, -100, savedata3_screenshot, 0.5, 0.5, 1)

				if Input.mouse_push?(M_LBUTTON) then
					if messagebox.Popup("�Z�[�u�f�[�^�R��#{string}���܂����H", 10, "DXRuby ADV�T���v��", 4 + 32 ) == 6 then
						if string == "���[�h" then
							flag = savedata_load(3); return flag
						elsif string == "�Z�[�u" then
							savedata_save(3, flag, lineno)
						else
							savedata_delete(3)
						end
					end
				end

			when back
				if Input.mouse_push?(M_LBUTTON) then
					return flag
					break
				end
		end

		#�G�X�P�[�v�L�[�ŏI��
		exit_message(messagebox)
	end
end
