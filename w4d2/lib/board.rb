class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1  #cup 6
    @name2 = name2  #cup 13
    @cups = Array.new(14) {Array.new(0)}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...14).each do |i| 
      4.times do cups[i] << :stone if i != 6 && i != 13 end 
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless (0...14).include?(start_pos)
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    count = cups[start_pos].length
    cups[start_pos] = []
    ignore = 13
    ignore = 6 if current_player_name == @name2
    current_p = start_pos
    while count > 0
      current_p += 1
      current_p %= 14
      if current_p != ignore
        cups[current_p] << :stone
        count -= 1
      end
    end
    render
    next_turn(current_p)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if @current_player == @name1
      return :prompt if ending_cup_idx == 6
    else
      return :prompt if ending_cup_idx == 13
    end
    return :switch if cups[ending_cup_idx].length == 1
    return ending_cup_idx if cups[ending_cup_idx].length > 1
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].all? {|arr| arr.empty?} ^ 
    cups[7..12].all? {|arr| arr.empty?}
  end

  def winner
    return :draw if cups[6] == cups[13]
    if cups[6].length > cups[13].length
      return @name1
    else
      return @name2
    end
  end
end
