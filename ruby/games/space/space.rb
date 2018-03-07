# https://github.com/gosu/gosu/wiki/ruby-tutorial
require 'gosu'
require 'csv'
require 'pry'

module ZOrder
  BACKGROUND, STARS, PLAYER, UI = *0..3
end

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, true
    self.caption = "space Tutorial Game"
    
    @background_image = Gosu::Image.new("media/space.png", :tileable => true)

    @player = Player.new
    @player.warp(320, 240)

    @star_anim = Gosu::Image.load_tiles("media/star.png", 25, 25)
    @stars = Array.new

    @high_score = HighScore.new
    @time = 0

    @font = Gosu::Font.new(20)
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
  
  def update
    if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      @player.turn_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      @player.turn_right
    end
    if Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_BUTTON_0
      @player.accelerate
    end
    if Gosu.button_down? Gosu::KB_DOWN or Gosu::button_down? Gosu::GP_DOWN
      @player.reverse
    end
    if Gosu.button_down? Gosu::KB_RETURN
      @player.restart_game
    end
    @player.move
    @player.collect_stars(@stars)

    if rand(100) < 4 and @stars.size < 25
      @stars.push(Star.new(@star_anim))
    end
    @time += 1
    if @time == 600
      @score = @player.score

      @top_scores = []
      CSV.foreach("scores.txt", converters: :all) do |row|
        @top_scores << row
      end
      @top_scores << ["Dallin", @score]
      @top_scores.sort_by! { |x| x[1] }.reverse!
      # binding.pry
      File.write("scores.txt", @top_scores.map(&:to_csv).join)
    end
  end
  
  def draw
    @background_image.draw(0, 0, ZOrder::BACKGROUND)
    @player.draw
    @stars.each { |star| star.draw }
    @font.draw("Score: #{@player.score}", 10, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)

    @high_score.draw(@score) if @time >= 600
  end
end

class Menu
  def initialize(args)
    
  end
  
  
end

class Player
  def initialize
    @image = Gosu::Image.new("media/starfighter.bmp")
    @beep = Gosu::Sample.new("media/beep.wav")
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @score = 0
  end

  def score
    @score
  end

  def collect_stars(stars)
    stars.reject! do |star|
      if Gosu.distance(@x, @y, star.x, star.y) < 35
        # binding.pry
        @score += 10
        @beep.play
        true
      else
        false
      end
    end
  end

  def warp(x, y)
    @x, @y = x, y
  end
  
  def turn_left
    @angle -= 4.5
  end
  
  def turn_right
    @angle += 4.5
  end
  
  def accelerate
    @vel_x += Gosu.offset_x(@angle, 0.5)
    @vel_y += Gosu.offset_y(@angle, 0.5)
  end

  def reverse
    @vel_x -= Gosu.offset_x(@angle, 0.3)
    @vel_y -= Gosu.offset_y(@angle, 0.3)
  end
  
  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 640
    @y %= 480
    
    @vel_x *= 0.95
    @vel_y *= 0.95
  end

  def restart_game
    GameWindow.new.show
    exit
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end

class Star
  attr_reader :x, :y

  def initialize(animation)
    @animation = animation
    @color = Gosu::Color::BLACK.dup
    @color.red = rand(256 - 40) + 40
    @color.green = rand(256 - 40) + 40
    @color.blue = rand(256 - 40) + 40
    @x = rand * 640
    @y = rand * 480
  end

  def draw  
    img = @animation[Gosu.milliseconds / 100 % @animation.size]
    img.draw(@x - img.width / 2.0, @y - img.height / 2.0,
        ZOrder::STARS, 1, 1, @color, :add)
  end
end

class HighScore
  def initialize
    @player = Player.new

    @font = Gosu::Font.new(40)
  end

  def update
  end

  def draw(score)
    score = score

    top_score = File.open('scores.txt') {|f| f.readline.chomp}.split(",")

    # binding.pry

    @font.draw("Your Score: #{score}", 400 / 2, 380 / 2, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
    Gosu::Font.new(30).draw("High Score: #{top_score[1]}", 460 / 2, 460 / 2, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
    Gosu::Font.new(30).draw("Press Enter to Play Again", 340 / 2, 520 / 2, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
  end
end

GameWindow.new.show