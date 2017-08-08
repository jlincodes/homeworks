class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new(0)}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      4.times do
        cup << :stone unless idx == 6 || idx == 13
      end
    end
    @cups
  end

  def valid_move?(start_pos)
    if start_pos == 6 || start_pos >= 13 || @cups[start_pos].empty?
      raise ArgumentError.new "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    moves = @cups[start_pos]
    @cups[start_pos] = []
    i = 1
    until moves == 0
      unless start_pos + i == 6 || start_pos + i == 13
        @cups[start_pos + i] << :stone
      end
      i += 1
      moved -= 1
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
