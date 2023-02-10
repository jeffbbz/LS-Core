require 'io/console'

WIN_SCORE = 5

module Displayable
  def display_welcome_message
    puts "####{'Welcome to Tic Tac Toe!'.center(40)}###"
    puts "####{"First to win #{WIN_SCORE} rounds, wins it all!".center(40)}###"
    puts
  end

  def display_player_names
    prompt("Hello #{human.name}! You computer opponent is #{computer.name}!")
  end

  def display_marker_choices
    prompt("You chose #{human.marker}. "\
    "#{computer.name} chose #{computer.marker}.")
  end

  def display_turn_choice
    first = <<~FIRST
    >>> Choose who goes first (type 1, 2, or 3):
     >> 1 : #{human.name} (you) goes first
     >> 2 : #{computer.name} (computer) goes first
     >> 3 : Let #{computer.name} decide
    FIRST
    puts first
  end

  def display_first_player
    if @current_marker == human.marker
      prompt("Okay, #{human.name} goes first!")
    else
      prompt("Okay, #{computer.name} goes first!")
    end
  end

  def display_board
    puts "#{human.name}'s marker is #{human.marker}. "\
    "#{computer.name}'s marker is #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def score_board_bar_length
    human.name.size > computer.name.size ? human.name.size : computer.name.size
  end

  def score_board_gap_length
    human_gap = 7
    computer_gap = 7
    human_name = human.name.size
    comp_name = computer.name.size
    if human_name > comp_name
      computer_gap = human_name - comp_name + 7
    elsif human_name < comp_name
      human_gap = comp_name - human_name + 7
    end
    return human_gap, computer_gap
  end

  def display_score_board
    human_gap, computer_gap = score_board_gap_length
    bar_length = score_board_bar_length
    score = <<~SCORE

    +--#{'-' * bar_length}Score:#{'-' * bar_length}-+
         #{human.name}:#{' ' * human_gap}#{human.score}
         #{computer.name}:#{' ' * computer_gap}#{computer.score}
    +-----#{'-' * bar_length * 2}----+

    SCORE
    puts score
  end

  def display_key_to_continue
    prompt("Press any key to continue!")
    STDIN.getch
  end

  def display_round_result
    clear_screen_and_display_board
    case board.winning_marker
    when human.marker
      prompt("#{human.name} won this round!")
    when computer.marker
      prompt("#{computer.name} won this round!")
    else
      prompt("It's a tie!")
    end
  end

  def display_game_result
    if human.score == WIN_SCORE
      prompt("#{human.name} is the first to #{WIN_SCORE} rounds! You win!")
    else
      prompt("#{computer.name} is the first to #{WIN_SCORE} rounds! They win!")
    end
    puts
  end

  def display_play_again_message
    prompt("Let's play again!")
    puts ""
  end

  def joinor(unmarked_squares)
    case unmarked_squares.size
    when 2 then unmarked_squares.join(" or ")
    when 1 then unmarked_squares.first
    else
      joined = unmarked_squares.join(", ")
      joined[-2] = " or "
      joined
    end
  end

  def display_goodbye_message
    puts
    prompt("Thanks for playing Tic Tac Toe, #{human.name}! Goodbye!")
  end
end

module Requestable
  def prompt(text)
    puts ">>> #{text}"
  end

  def request_human_player_name
    answer = nil
    loop do
      prompt("What's your name, brave player?")
      answer = gets.chomp.strip.capitalize
      break unless answer.empty?
      prompt("Sorry, please input your name.")
    end
    answer
  end

  def request_marker_choices
    answer = nil
    loop do
      prompt("Select a marker to use: #{joinor(Square::MARKER_CHOICES)}.")
      answer = gets.chomp.upcase.strip
      break if Square::MARKER_CHOICES.include?(answer)
      prompt("Sorry, choose from among: #{joinor(Square::MARKER_CHOICES)}.")
    end
    answer
  end

  def request_first_player
    answer = nil
    loop do
      display_turn_choice
      answer = gets.chomp.to_i
      break if [1, 2, 3].include?(answer)
      prompt("Sorry, choose 1, 2, or 3")
    end
    answer
  end

  def request_player_move(board)
    square = nil
    loop do
      prompt("Choose a square (#{joinor(board.unmarked_keys)}): ")
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      prompt("Sorry, that's not a valid choice.")
    end
    square
  end

  def play_again?
    answer = nil
    loop do
      prompt("#{human.name}, would you like to play again? (y/n)")
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      prompt("Sorry, must be y or n")
    end

    answer == 'y'
  end
end

class Board
  attr_reader :squares

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def winning_line_almost_full?(marker)
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      return true if two_same_markers_and_line_not_full(squares, marker)
    end
    false
  end

  def best_next_square(marker)
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if two_same_markers_and_line_not_full(squares, marker)
        return empty_square(squares)
      end
    end
    nil
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      marker = squares.first.marker
      if count_same_line_markers(squares, marker) == 3
        return marker
      end
    end
    nil
  end

  def someone_won?
    !!winning_marker
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize, Metrics/MethodLength

  private

  def line_full?(squares)
    squares.select(&:marked?).size == 3
  end

  def empty_square(squares)
    @squares.key(squares.select(&:unmarked?).first)
  end

  def count_same_line_markers(squares, marker)
    squares.select { |square| square.marked? && square.marker == marker }.size
  end

  def two_same_markers_and_line_not_full(squares, marker)
    count_same_line_markers(squares, marker) == 2 && !line_full?(squares)
  end
end

class Square
  INITIAL_MARKER = " "
  MARKER_CHOICES = %w(X O @ & +)

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  include Displayable
  include Requestable

  attr_accessor :score, :marker, :name

  def initialize
    @score = 0
  end

  private

  def winning?(player_marker, board)
    board.winning_line_almost_full?(player_marker)
  end
end

class Human < Player
  def move(board)
    board[request_player_move(board)] = marker
  end
end

class Computer < Player
  COMPUTER_NAMES = ["Thorntonsen", "Brentrifer", "Chazzelington", "Griddleteth"]

  attr_writer :rival_marker

  def move(board)
    choice = if winning?(marker, board)
               board.best_next_square(marker)
             elsif winning?(rival_marker, board)
               board.best_next_square(rival_marker)
             else
               favor_five_or_random(board)
             end
    board[choice] = marker
  end

  private

  attr_reader :rival_marker

  def favor_five_or_random(board)
    return 5 if board.unmarked_keys.include?(5)
    board.unmarked_keys.sample
  end
end

class TTTGame
  include Displayable
  include Requestable

  def initialize
    @board = Board.new
    @human = Human.new
    @computer = Computer.new
  end

  def play
    clear
    display_welcome_message
    set_player_names
    display_player_names
    play_match
    display_goodbye_message
  end

  private

  attr_reader :board, :human, :computer

  def play_match
    loop do
      match_options
      display_key_to_continue
      play_round
      display_game_result
      break unless play_again?
      reset_game
      display_play_again_message
    end
  end

  def match_options
    set_player_markers
    display_marker_choices
    decide_first_player(request_first_player)
    display_first_player
  end

  def play_round
    loop do
      clear_screen_and_display_board
      player_move
      display_round_result
      calculate_score
      display_score_board
      break if round_over?
      display_key_to_continue
      reset
    end
  end

  def set_player_names
    human.name = request_human_player_name
    computer.name = Computer::COMPUTER_NAMES.sample
  end

  def decide_first_player(number)
    @start_marker = case number
                    when 1 then human.marker
                    when 2 then computer.marker
                    else
                      [human.marker, computer.marker].sample
                    end
    @current_marker = @start_marker
  end

  def set_player_markers
    human.marker = request_marker_choices
    computer.marker = (Square::MARKER_CHOICES - [human.marker]).sample
    computer.rival_marker = human.marker
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def human_turn?
    @current_marker == human.marker
  end

  def current_player_moves
    if human_turn?
      human.move(board)
      @current_marker = computer.marker
    else
      computer.move(board)
      @current_marker = human.marker
    end
  end

  def calculate_score
    case board.winning_marker
    when human.marker then human.score += 1
    when computer.marker then computer.score += 1
    end
  end

  def round_over?
    [human.score, computer.score].any? { |score| score == WIN_SCORE }
  end

  def reset
    board.reset
    @current_marker = @start_marker
    clear
  end

  def reset_game
    human.score = 0
    computer.score = 0
    reset
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def clear
    system "clear"
  end
end

game = TTTGame.new
game.play
