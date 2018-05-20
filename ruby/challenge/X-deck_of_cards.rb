# http://awesomeruby.com/ruby-code/building-deck-cards-ruby/
require 'pry'

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "The #{@rank} of #{@suit}"
  end
end

class Deck
  def initialize
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['♣', '♥', '♠', '♦']
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end

  @cards.shuffle!
  end

  def deal (number)
    number.times {@cards.shift.output_card}
  end
end

deck = Deck.new
deck.deal(5)
puts "\n"
deck.deal(5)

# ---------------------------------------------------------------------------------

# @stack_of_cards = []
# @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
# @suits = %w(Spades Hearts Diamonds Clubs)
#
# def draw_card
# @suit = @suits.sample
# @rank = @ranks.sample
# @add_card =  "#{@rank} of #{@suit}"
#
# end
#
# def check
#     draw_card
#     if @stack_of_cards.include?(@add_card) == false
#         @stack_of_cards << @add_card
#         puts "you drew the #{@add_card}"
#         check
#     else
#     end
# end
#
# until @stack_of_cards.size == 52
#      check
#  end
#  p @stack_of_cards
#  puts "You've drawn all the cards!"
