
#�Q�[���I������
def game_exit

	#�G�X�P�[�v�L�[�ŃQ�[���I��
	if Input.key_push?(K_ESCAPE) then

		#�Z�[�u�f�[�^�p�X�N���[���V���b�g�̍폜
		if File.exist?("DATA/SAVE/savedata.png") then
			File.delete("DATA/SAVE/savedata.png")
		end

		exit
	end
end