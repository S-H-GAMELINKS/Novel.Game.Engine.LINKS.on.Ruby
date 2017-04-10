
class ChoiceDraw

	#‰Šú‰»
	def initialize(bg = Image.new, char = Image.new, window = 0, choice1 = "choice1", choice2 = "choice2", font = Font.new(26))
		@bg = bg
		@char = char
		@window = window
		@choice1 = choice1
		@choice2 = choice2
		@font = font
	end

	#‘I‘ğˆ‚Ì•`‰æ
	def draw_choice

		#Šeí‘fŞ‚Ì•`‰æ
		Window.draw(0, 0, @bg, 1)
		Window.draw(150, 0, @char, 2)
		Window.draw(0, 350, @window, 3)

		#‘I‘ğˆ‚Ì•`‰æ
		Window.draw_font(180, 350, @choice1, @font, z:4)
		Window.draw_font(180, 380, @choice2, @font, z:4)
	end
end
