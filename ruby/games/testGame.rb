require 'gosu'

class GameWindow < Gosu::Window
	def initialize(width, height, fullscreen)
		super(width, height, fullscreen)

		@background = Gosu::Image.new("blueswearldots.jpg", :tileable => false)
	end

	def button_down(button)
		close if button == Gosu::KbEscape
	end

	def update
		
	end

	def draw
		@background.draw(0, 0, 0)
	end
	
end

game_window = GameWindow.new(1600, 1200, false)

game_window.show