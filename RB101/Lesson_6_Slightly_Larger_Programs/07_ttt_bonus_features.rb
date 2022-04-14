WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)                              # The TicTacToe Board
  puts "\n"
  prompt "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def display_welcome
  welcome = <<-WELCOME

-+- It's Tic Tac Toe Time! -+-
-+- First to win 5 rounds, wins it all! -+-

            WELCOME
  puts welcome
end

def computer_starting_player_choice
  ['player', 'computer'].sample
end

def request_starting_player
  starter = nil
  loop do
    prompt "Who starts first? (p for player, c for computer, ? for random)"
    choice = gets.chomp
    starter = starting_player(choice)
    print_starting_player(starter)
    break if starter == 'computer' || starter == 'player'
  end
  starter
end

def starting_player(choice)
  if choice.downcase.start_with?('p')
    'player'
  elsif choice.downcase.start_with?('c')
    'computer'
  elsif choice == '?'
    computer_starting_player_choice
  end
end

def print_starting_player(player)
  system 'clear'
  puts "\n"
  if player == 'player'
    prompt "Okay, you're first!"
  else
    prompt "Sorry, that's not a valid choice."
  end
end

def joinor(brd, delimiter=', ', joiner='or')
  case empty_squares(brd).length
  when 2
    empty_squares(brd).join(" #{joiner} ")
  when 1 || 0
    empty_squares(brd).first
  else
    joined = empty_squares(brd).join(delimiter)
    joined[-2] = " #{joiner} " unless joined.length <= 1
    joined
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(brd)}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_offense_defense(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_favor_5(brd)
  return empty_squares(brd).sample unless empty_squares(brd).include?(5)
  5
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = computer_offense_defense(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = computer_offense_defense(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  square = computer_favor_5(brd) if !square
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, player)
  if player == 'player'
    display_board(brd)
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  player == 'player' ? 'computer' : 'player'
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(player_score, comp_score, brd)
  if detect_winner(brd) == 'Player'
    player_score += 1
  elsif detect_winner(brd) == 'Computer'
    comp_score += 1
  end
  return player_score, comp_score
end

def match_over?(player_score, comp_score)
  player_score == 5 || comp_score == 5
end

loop do
  system 'clear'
  player_score = 0
  comp_score = 0
  display_welcome

  loop do
    board = initialize_board
    player = request_starting_player

    loop do
      place_piece!(board, player)
      system 'clear'
      player = alternate_player(player)
      break if someone_won?(board) || board_full?(board)
    end
    system 'clear'
    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      player_score, comp_score = update_score(player_score, comp_score, board)
    else
      prompt "It's a tie!"
    end

    prompt "Score - You: #{player_score}, Computer: #{comp_score}"
    break if match_over?(player_score, comp_score)
    prompt "press q to quit or any key to keep going"
    answer = gets.chomp
    break if answer.downcase.start_with?('q')
  end

  if match_over?(player_score, comp_score)
    prompt "Game over! You: #{player_score}, Computer: #{comp_score}"
    prompt "Play another match? (y to play again or any key to quit)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  else
    break
  end
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
