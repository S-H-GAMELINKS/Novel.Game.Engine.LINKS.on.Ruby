# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#�Z�[�u�f�[�^�L���`�F�b�N�����\�[�X

#�Z�[�u�f�[�^1�̗L��
def savedata1_check

	if File.exist?("DATA/SAVE/savedata1.png") then
		savedata_exist = 1
	else
		savedata_exist = 0
	end

	return savedata_exist
end

#�Z�[�u�f�[�^2�̗L��
def savedata2_check

	if File.exist?("DATA/SAVE/savedata2.png") then
		savedata_exist = 1
	else
		savedata_exist = 0
	end

	return savedata_exist
end

#�Z�[�u�f�[�^3�̗L��
def savedata3_check

	if File.exist?("DATA/SAVE/savedata3.png") then
		savedata_exist = 1
	else
		savedata_exist = 0
	end

	return savedata_exist
end
