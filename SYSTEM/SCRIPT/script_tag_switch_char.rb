# coding: shift_jis
#mxQ[GWuLINKSv on Ruby
#XNvg^O(§ΏG)\[X

#DXRubyΜΗέέ
require 'dxruby'

class ScriptSwitch_char

	#ϊ»
	def initialize(text = "", char = Image.new(640, 480, [0, 0, 0, 0]))
		@text = text
		@char = char
	end

	def load_char

		case @text
			#§ΏG01Μ`ζ
			when /char01/
				@char = MaterialLoad_char.new("CHAR01").load

			#§ΏG02Μ`ζ
			when /char02/
				@char = MaterialLoad_char.new("CHAR02").load

			#§ΏG03Μ`ζ
			when /char03/
				@char = MaterialLoad_char.new("CHAR03").load

			#§ΏG04Μ`ζ
			when /char04/
				@char = MaterialLoad_char.new("CHAR04").load

			#§ΏG05Μ`ζ
			when /char05/
				@char = MaterialLoad_char.new("CHAR05").load

			#§ΏG06Μ`ζ
			when /char06/
				@char = MaterialLoad_char.new("CHAR06").load

			#§ΏG07Μ`ζ
			when /char07/
				@char = MaterialLoad_char.new("CHAR07").load

			#§ΏG08Μ`ζ
			when /char08/
				@char = MaterialLoad_char.new("CHAR08").load

			#§ΏG09Μ`ζ
			when /char09/
				@char = MaterialLoad_char.new("CHAR09").load

			#§ΏG10Μ`ζ
			when /char10/
				@char = MaterialLoad_char.new("CHAR10").load

			#§ΏG11Μ`ζ
			when /char11/
				@char = MaterialLoad_char.new("CHAR11").load

			#§ΏG12Μ`ζ
			when /char12/
				@char = MaterialLoad_char.new("CHAR12").load

			#§ΏG13Μ`ζ
			when /char13/
				@char = MaterialLoad_char.new("CHAR13").load

			#§ΏG14Μ`ζ
			when /char14/
				@char = MaterialLoad_char.new("CHAR14").load

			#§ΏG15Μ`ζ
			when /char15/
				@char = MaterialLoad_char.new("CHAR15").load

			#§ΏG16Μ`ζ
			when /char16/
				@char = MaterialLoad_char.new("CHAR16").load

			#§ΏG17Μ`ζ
			when /char17/
				@char = MaterialLoad_char.new("CHAR17").load

			#§ΏG18Μ`ζ
			when /char18/
				@char = MaterialLoad_char.new("CHAR18").load

			#§ΏG19Μ`ζ
			when /char19/
				@char = MaterialLoad_char.new("CHAR19").load

			#§ΏG20Μ`ζ
			when /char20/
				@char = MaterialLoad_char.new("CHAR20").load
		end

		return @char
	end
end
