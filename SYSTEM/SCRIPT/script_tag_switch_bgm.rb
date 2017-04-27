# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#スクリプトタグ処理(効果音)ソース

#DXRubyの読み込み
require 'dxruby'

class ScriptSwitch_bgm

	#初期化
	def initialize(text = "", bgm = 0)
		@text = text
		@bgm = bgm
	end

	def load_bgm

		case @text

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play

		#BGM01の再生
		when /bgm01/
			@bgm = MaterialLoad_bgm.new("BGM01").load.set_volume($bgm_vol, 0).play
		end

		return @bgm
	end
end
