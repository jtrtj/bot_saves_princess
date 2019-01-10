class Trajectory
  attr_reader :row_index_difference, :column_index_difference
  def initialize(row_index_difference, column_index_difference)
    @row_index_difference = row_index_difference
    @column_index_difference = column_index_difference
    @moves = Array.new
  end
end