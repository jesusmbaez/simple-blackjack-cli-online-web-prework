def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  input = get_user_input
  prompt_user 
  input
  if input == "s"
    card_total
  elsif input == "h"
    card_total + deal_card
  else invalid_command
  end 
end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  display_card_total
  until card_total > 21
  end_game
end
    
