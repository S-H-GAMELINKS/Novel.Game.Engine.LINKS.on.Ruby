# coding: shift_jis
#mxQ[GWuLINKSv on Ruby
#XNvg^O(wiζ)\[X

#DXRubyΜΗέέ
require 'dxruby'

class ScriptSwitch_bg

	#ϊ»
	def initialize(text = "", bg = Image.new(640, 480, [0, 0, 0, 0]))
		@text = text
		@bg = bg
	end

	def load_bg

		case @text
			#wiζ01Μ`ζ
			when /bg01/
				@bg = MaterialLoad_bg.new("BG01").load

			#wiζ02Μ`ζ
			when /bg02/
				@bg = MaterialLoad_bg.new("BG02").load

			#wiζ03Μ`ζ
			when /bg03/
				@bg = MaterialLoad_bg.new("BG03").load

			#wiζ04Μ`ζ
			when /bg04/
				@bg = MaterialLoad_bg.new("BG04").load

			#wiζ05Μ`ζ
			when /bg05/
				@bg = MaterialLoad_bg.new("BG05").load

			#wiζ06Μ`ζ
			when /bg06/
				@bg = MaterialLoad_bg.new("BG06").load

			#wiζ07Μ`ζ
			when /bg07/
				@bg = MaterialLoad_bg.new("BG07").load

			#wiζ08Μ`ζ
			when /bg08/
				@bg = MaterialLoad_bg.new("BG08").load

			#wiζ09Μ`ζ
			when /bg09/
				@bg = MaterialLoad_bg.new("BG09").load

			#wiζ10Μ`ζ
			when /bg10/
				@bg = MaterialLoad_bg.new("BG10").load

			#wiζ11Μ`ζ
			when /bg11/
				@bg = MaterialLoad_bg.new("BG11").load

			#wiζ12Μ`ζ
			when /bg12/
				@bg = MaterialLoad_bg.new("BG12").load

			#wiζ13Μ`ζ
			when /bg13/
				@bg = MaterialLoad_bg.new("BG13").load

			#wiζ14Μ`ζ
			when /bg14/
				@bg = MaterialLoad_bg.new("BG14").load

			#wiζ15Μ`ζ
			when /bg15/
				@bg = MaterialLoad_bg.new("BG15").load

			#wiζ16Μ`ζ
			when /bg16/
				@bg = MaterialLoad_bg.new("BG16").load

			#wiζ17Μ`ζ
			when /bg17/
				@bg = MaterialLoad_bg.new("BG17").load

			#wiζ18Μ`ζ
			when /bg18/
				@bg = MaterialLoad_bg.new("BG18").load

			#wiζ19Μ`ζ
			when /bg19/
				@bg = MaterialLoad_bg.new("BG19").load

			#wiζ20Μ`ζ
			when /bg20/
				@bg = MaterialLoad_bg.new("BG20").load
		end

		return @bg
	end
end
