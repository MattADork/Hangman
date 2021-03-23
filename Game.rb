require_relative 'ASCII_Hangman'

def prompt
  print "> "
end

def pick_word
  puts "Pick a word (Don't let your opponent see!)"
  prompt
  word = gets.chomp.downcase
  if word.include?(" ")
    puts "Sorry, only one word allowed"
    return pick_word
  end
  return word
end

def pick_a_letter
  puts "Go ahead and guess a letter"
  prompt
  guess = gets.chomp.downcase
  if guess.length != 1
    puts "Hey, guess exactly one letter!"
    return pick_a_letter
  end
  return guess
end

def initialize_board
  word = pick_word
  underscores = word.length
  word_game = []
  incorrect = 0
  while word_game.length < underscores
    word_game.push("_ ")
  end
  print word_game
  puts HANGMANPICS[incorrect]
  puts "_ " * underscores
  return word
end

def check(guess, word)
  word_array = word.split("")
  i = 0
  correct_guesses = []
  while i < word_array.length
    if word_array[i] == guess
      correct_guesses.push(i)
    end
    i += 1
  end
  return correct_guesses
end

def play_game
  word = initialize_board
  guess = pick_a_letter
  result = check(guess, word)
  print result
end

play_game