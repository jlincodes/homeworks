class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      add_random_color
      take_turn
    end
    game_over_message
    reset_game
  end


  def take_turn
    show_sequence
    puts "Enter the sequence"
    require_sequence
    if game_over != true
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    add_random_color
    @seq
  end

  def require_sequence
    new_seq = gets.chomp
  end

  def add_random_color
    @seq << COLORS.shuffle.shift
  end

  def round_success_message
    puts "Sequence is a match! Next round!"
  end

  def game_over?
    @game_over = true if show_sequence == require_sequence
  end

  def game_over_message
    puts "Sequence was not a match. You lose. ¯\_(ツ)_/¯"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
