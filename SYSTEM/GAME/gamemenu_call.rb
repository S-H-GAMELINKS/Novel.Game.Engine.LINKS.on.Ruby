
#�Q�[�����j���[�Ăяo��
def gamemenu_call(lineno, choice)

	#�o�b�N�X�y�[�X�L�[�ŃQ�[�����j���[���Ăяo��
	if Input.key_push?(K_BACK) then

		#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾�ϐ���ON��
		$savedata_screenshot = 1

		#BGM�̍Đ���~
		$bgm.stop
			
		#���[�g�Ǘ��ϐ��̋L��
		choice = $choice

		#�X�N���v�g�s���̋L��
		$lineno = lineno

		#�Z�[�u�f�[�^�p�X�N���[���V���b�g�擾
		savedata_screenshot()

		#�Q�[�����j���[�̌Ăяo��
		gamemenu()
	end

	return choice
end