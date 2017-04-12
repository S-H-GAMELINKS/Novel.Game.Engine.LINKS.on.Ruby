
#DXRuby�̓ǂݍ���
require 'dxruby'

#fileutils���C�u�����̓ǂݍ���
require 'fileutils'

#�^�C�g�������̌Ăяo��
require_relative 'title'

#�Q�[�����[�v�����̌Ăяo��
require_relative 'game_loop'

#�e��`��ϐ��̓ǂݍ���
require_relative 'var_h'

#�Z�[�u���������̌Ăяo��
require_relative 'SAVE_LOAD/savedata_save'

#���[�h���������̌Ăяo��
require_relative 'SAVE_LOAD/savedata_load'

#�R���t�B�O���������̌Ăяo��
require_relative 'CONFIG/config'

#�f�ޓǍ�(�����G)
require_relative 'MATERIAL/material_load_char'

#�f�ޓǍ�(�w�i)
require_relative 'MATERIAL/material_load_bg'

#�f�ޓǍ�(���ʉ�)
require_relative 'MATERIAL/material_load_se'

#�f�ޓǍ�(BGM)
require_relative 'MATERIAL/material_load_bgm'

#�X�N���v�g�f�[�^�Ǎ�
require_relative 'SCRIPT/script_read'

#�X�N���v�g�`��֘A�̓ǂݍ���
require_relative 'SCRIPT/script_draw'

#���[�g�ϐ��֘A�̓ǂݍ���
require_relative 'SCRIPT/script_root'

#�X�N���v�g�^�O�����p�w�b�_
require_relative 'SCRIPT/script_h'

#�I�����`��֘A�̓ǂݍ���
require_relative 'CHOICE/choice_draw'

#�I�����L�[����֘A�̓ǂݍ���
require_relative 'CHOICE/choice_keymove'

#gamemenu���\�b�h�̓ǂݍ���
require_relative 'gamemenu'

#savedata_screenshot���\�b�h�̓ǂݍ���
require_relative 'SAVE_LOAD/savedata_screenshot'
