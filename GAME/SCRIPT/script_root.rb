# coding: shift_jis
#�m�x���Q�[���G���W���uLINKS�v on Ruby
#���[�g�ϐ��Ǘ��\�[�X

#DXRuby�̓ǂݍ���
require 'dxruby'

class ScriptRoot

	#������
	def initialize(root = 0)
		@root = root
	end

	#���[�g�ϐ��̑��
	def root

		case $choice

			when 1
				root = 1

			when 2
				root = 2

			when 3
				root = 3

			when 4
				root = 4

			when 5
				root = 5

			when 6
				root = 6

			when 7
				root = 7
		end

		@root = root
		return @root
	end
end
