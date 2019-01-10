class Trajectory
  attr_reader :row_index_difference, :column_index_difference, :moves
  def initialize(row_index_difference, column_index_difference)
    @row_index_difference = row_index_difference
    @column_index_difference = column_index_difference
    @moves = []
  end

  def determine_moves
    determine_vertical_moves
    determine_horizontal_moves
  end

  def determine_vertical_moves
    if @row_index_difference >= 0
      (@row_index_difference.abs).times do
          @moves << "UP"
      end
    else
      (@row_index_difference.abs).times do
          @moves << "DOWN"
      end
    end
  end

  def determine_horizontal_moves
    if @column_index_difference >= 0
      (@column_index_difference.abs).times do
          @moves << "LEFT"
      end
    else
      (@column_index_difference.abs).times do
          @moves << "RIGHT"
      end
    end
  end
end