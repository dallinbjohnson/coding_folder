require 'pry'

@card_deck = {"Ace"=> 1, "King"=> 10, "Jack"=> 10, "Queen"=> 10, "2" => 2, "3"=> 3, "4"=> 4, "5"=> 5, "6"=> 6, "7"=> 7, "8"=> 8, "9"=> 9, "10"=> 10}
@suits = ['H', 'C', 'S', 'D']
@wallet = 500
@playerhand = []
@dealerhand = []
@playervalue = []
@dealervalue = []
@total = 0
@dealertotal = 0




def intro
    puts "Welcome to BlackJack! Would you like to play? (y/n)"
    input = gets.chomp.downcase
    if input == "y"
        puts "Great!"
        bet
    elsif input == "n"
        puts "No problem, come back again later"
        exit
    end
end

def bet
    # gives player option to bet. IF they dont want to bet, program ends. If they do, ask how much, and then IF they win, they get double what they bet. If they lose, ALL bets are lost.
    puts "How much would you like to bet?"
        @money = gets.chomp.to_i
        hands
end

def hands
    2.times do 
    @playerhand    << deal
    @dealerhand    << deal
    end
end

def values
    @playervalue = []
    @playerhand.map do |x|
        @playervalue << @card_deck[x]    
    end
    @dealervalue = []
    @dealerhand.map do |x|
        @dealervalue << @card_deck[x]
    end
end


def deal
    # 1 random card to each player, and 1 to the dealer/ 2nd random card to each player, and 2nd random card to dealer
    @card = @card_deck.keys.sample
end

def hit
    @playerhand << deal
    values
    @total = @playervalue.inject(&:+)
    puts "Here is your new hand #{@playerhand.join(", ")}, your new total is now #{@total}."
    compare
end

def hit_dealer
    @dealerhand << deal
    values
    @dealertotal = @dealervalue.inject(&:+)

end

def compare
    if @total > 21
        puts "You BUST! The dealer has won! The dealer's cards were #{@dealerhand.join(" and ")}"

    elsif @total < 21
        puts "Would you like to hit again? (y/n)"
        @hit_again = gets.chomp.downcase
            if @hit_again == "y"
                hit
            else
                winnings
            end
    end
end

def winnings
    @dealertotal = @dealervalue.inject(&:+)
        if @dealertotal <= 16
            hit_dealer
        end
    puts "Your card total is #{@total}, the dealers card total is #{@dealertotal}"
end

intro
values
@total = @playervalue.inject(&:+)


puts "#{@playerhand.join(" and ")}, which equals #{@total}, the Dealers top card is a #{@dealerhand[0]}."
puts "Would you like to Hit? (y/n)"
input1 = gets.chomp.downcase
    if input1 == "y"
        hit
    elsif input1 == "n"
        winnings
    else
        puts "error"
    end