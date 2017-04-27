
#ƒXƒNƒŠƒvƒg•`‰æˆ—ƒNƒ‰ƒX
class ScriptDraw

	#‰Šú‰»
	def initialize(string = "", bg = Image.new(640, 480, [0, 0, 0, 0]), char = Image.new(640, 480, [0, 0, 0, 0]), window = Image.new(640, 480, [0, 0, 0, 0]),  font = Font.new(26))
		@string = string
		@bg = bg
		@char = char
		@window = window
		@font = font
	end

	#•¶š—ñ‚ÆŠeí‘fŞ‚Ì•`‰æ
	def draw
		x = 0
		y = 0

		@string.each_char do |word|

			Window.draw(0, 0, @bg, 1)
			Window.draw(150, 0, @char, 2)
			Window.draw(0, 350, @window, 3)
			Window.draw_font(30 + x, 350 + y, word, @font, z:4)
			
			x += 30
			
			if x >= 600 then
				x = 0
				y += 30
			end
		end
	end
end
