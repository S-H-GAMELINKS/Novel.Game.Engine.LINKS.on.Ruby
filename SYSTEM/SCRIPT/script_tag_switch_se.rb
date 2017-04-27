# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#スクリプトタグ処理(効果音)ソース

#DXRubyの読み込み
require 'dxruby'

class ScriptSwitch_se

	#初期化
	def initialize(text = "", se = 0)
		@text = text
		@se = se
	end

	def load_se

		case @text

		#効果音01の再生
		when /se01/
			@se = MaterialLoad_se.new("SE01").load.set_volume($se_vol, 0).play

		#効果音02の再生
		when /se02/
			@se = MaterialLoad_se.new("SE02").load.set_volume($se_vol, 0).play

		#効果音03の再生
		when /se03/
			@se = MaterialLoad_se.new("SE03").load.set_volume($se_vol, 0).play

		#効果音04の再生
		when /se04/
			@se = MaterialLoad_se.new("SE04").load.set_volume($se_vol, 0).play

		#効果音05の再生
		when /se05/
			@se = MaterialLoad_se.new("SE05").load.set_volume($se_vol, 0).play

		#効果音06の再生
		when /se06/
			@se = MaterialLoad_se.new("SE06").load.set_volume($se_vol, 0).play

		#効果音07の再生
		when /se07/
			@se = MaterialLoad_se.new("SE07").load.set_volume($se_vol, 0).play

		#効果音08の再生
		when /se08/
			@se = MaterialLoad_se.new("SE08").load.set_volume($se_vol, 0).play

		#効果音09の再生
		when /se09/
			@se = MaterialLoad_se.new("SE09").load.set_volume($se_vol, 0).play

		#効果音10の再生
		when /se10/
			@se = MaterialLoad_se.new("SE10").load.set_volume($se_vol, 0).play

		#効果音01の再生
		when /se11/
			@se = MaterialLoad_se.new("SE11").load.set_volume($se_vol, 0).play

		#効果音12の再生
		when /se12/
			@se = MaterialLoad_se.new("SE12").load.set_volume($se_vol, 0).play

		#効果音13の再生
		when /se13/
			@se = MaterialLoad_se.new("SE13").load.set_volume($se_vol, 0).play

		#効果音14の再生
		when /se14/
			@se = MaterialLoad_se.new("SE14").load.set_volume($se_vol, 0).play

		#効果音15の再生
		when /se15/
			@se = MaterialLoad_se.new("SE15").load.set_volume($se_vol, 0).play

		#効果音16の再生
		when /se16/
			@se = MaterialLoad_se.new("SE16").load.set_volume($se_vol, 0).play

		#効果音17の再生
		when /se17/
			@se = MaterialLoad_se.new("SE17").load.set_volume($se_vol, 0).play

		#効果音18の再生
		when /se18/
			@se = MaterialLoad_se.new("SE18").load.set_volume($se_vol, 0).play

		#効果音19の再生
		when /se19/
			@se = MaterialLoad_se.new("SE19").load.set_volume($se_vol, 0).play

		#効果音20の再生
		when /se20/
			@se = MaterialLoad_se.new("SE20").load.set_volume($se_vol, 0).play
		end

		return @se
	end
end
