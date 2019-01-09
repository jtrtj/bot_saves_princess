class DungeonMap
  def initialize(grid)
    @grid = grid
  end

  def character_coordinates(character_symbol)
    row_coordinate = find_row_coordinate(character_symbol)
    column_coordiante = find_column_coordinate(character_symbol)
    [row_coordinate, column_coordiante]
  end
end
