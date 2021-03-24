require_relative 'ASCII_Hangman'
require 'io/console'

$guesses = []
$lives = 8

def prompt
  print "> "
end

def random_word
  word = WORDS[rand(WORDS.length)]
  return word
end

def pick_word
  puts "Would you like to play with a random word? (y/n)"
  prompt
  answer = gets.chomp.downcase
  if answer == "y" or answer == "yes"
    word = random_word
    return word
  else
    puts "Pick a word (Don't let your opponent see!)"
    prompt
    word = STDIN.noecho(&:gets).chomp.downcase
    if word.include?(" ")
      puts "Sorry, only one word allowed"
      return pick_word
    end
    puts 
    puts 
    puts "Word received!"
    puts
    return word
  end
end

def pick_a_letter
  $organized_guesses = organize($guesses)
  puts "Guesses so far: #{$organized_guesses}"
  puts "Lives left #{$lives}"
  puts
  puts "Go ahead and guess a letter"
  prompt
  guess = gets.chomp.downcase
  if guess.length != 1
    puts "Hey, guess exactly one letter!"
    return pick_a_letter
  end
  if $organized_guesses.include?(guess) or $organized_guesses.include?(guess + ", ")
    puts "You've already guessed that letter..."
    puts HANGMANPICS[$incorrect]
    puts $word_game.join
    return pick_a_letter
  end
  $guesses.push(guess)
  return guess
end

def organize(array)
  temp_value = 0
  if array.length > 0
    temp_value = array.sort[-1]
  end
  array = array.uniq
  new_array = array.sort.map { |value| value = value + ", "}
  if temp_value != 0
    new_array[-1] = temp_value
  end
  puts
  return new_array.join
end

def initialize_board
  word = pick_word
  underscores = word.length
  $word_game = []
  $incorrect = 0
  while $word_game.length < underscores
    $word_game.push("_ ")
  end
  puts HANGMANPICS[$incorrect]
  puts "_ " * underscores
  return word
end

def check(guess, word)
  $word_array = word.split("")
  i = 0
  correct_guesses = []
  while i < $word_array.length
    if $word_array[i] == guess
      correct_guesses.push(i)
    end
    i += 1
  end
  return correct_guesses
end

def correct_guess(result)
  puts "That's correct!"
  puts HANGMANPICS[$incorrect]
  while result.length > 0
    $word_game[result[0]] = $word_array[result[0]]
    result.shift
  end
  print $word_game.join
  puts
  if $word_game.include?("_ ") == false
    puts "Congratulations! You've won the game!"
    puts
    play_again
  end
  return guess_and_check($word)
end

def play_again
  puts "Would you like to play again? (y/n)"
  prompt
  play_more = gets.chomp.downcase
  puts
  if play_more == "y" or play_more == "yes"
    return play_game
  else
    exit
  end
end

def incorrect_guess(word)
  puts "Sorry, that's incorrect!"
  $incorrect += 1
  $lives -= 1
  if $incorrect == HANGMANPICS.length
    puts HANGMANPICS[7]
    puts "\nSorry... You lose this time\n"
    puts
    puts "The word was " + $word_array.join + "."
    puts
    play_again
  end
  puts HANGMANPICS[$incorrect]
  puts $word_game.join
  return guess_and_check($word)
end

def guess_and_check(word)
  guess = pick_a_letter
  result = check(guess, word)
  if result == []
    incorrect_guess(word)
  elsif
    correct_guess(result)
  end
end

def play_game
  $guesses = []
  $lives = 8
  $word = initialize_board
  guess_and_check($word)
end
play_game