#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Q�[�����j���[�����\�[�X

def gamemenu_choice(menu_y)

		#TITLE��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 200 then
			$choice = 0
		end

		#SAVE��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 250 then

			#�Z�[�u����
			savedata_save()
		end

		#LOAD��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 300 then

			#���[�h����
			savedata_load()
		end

		#DELETE��I�������ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 350 then

			#�폜����
			savedata_delete()
		end

		#CONFIG��I�񂾍ۂ̏���
		if Input.key_push?(K_RETURN) && menu_y == 400 then

			#�R���t�B�O����
			config()
		end
end