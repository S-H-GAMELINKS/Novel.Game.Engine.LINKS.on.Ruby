# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Z�[�u�f�[�^�E�L�[����\�[�X

def savedata_key(menu_y)

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_UP) then
			menu_y -= 50

			if menu_y <= 250 then
				menu_y = 450
			end
		end

		#�J�[�\���̃L�[����i���L�[�j
		if Input.key_push?(K_DOWN) then
			menu_y += 50

			if menu_y >= 500 then
				menu_y = 300
			end
		end
	return menu_y
end