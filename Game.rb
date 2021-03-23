require_relative 'ASCII_Hangman'

puts HANGMANPICS.length

def prompt
  print "> "
end

def pick_word
  puts "Pick a word (Don't let your opponent see!)"
  prompt
  word = gets.chomp.downcase
end

def pick_a_letter
  puts "Go ahead and guess a letter"
  prompt
  guess = gets.chomp_downcase
  if guess.length != 1
    puts "Hey, guess exactly one letter!"
    return pick_a_letter
  end
  puts guess
end

def initialize_board
  word = pick_word
  underscores = word.length
  word_game = []
  while word_game.length < underscores
    word_game.push("_ ")
  end
  print word_game
  puts HANGMANPICS[0]
  puts "_ " * underscores
end

initialize_board