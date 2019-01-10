class DungeonMap
  def initialize(grid)
    @grid = grid
  end

  def character_coordinates(character_symbol)
    row_coordinate = find_row_coordinate(character_symbol)
    column_coordiante = find_column_coordinate(character_symbol)
    Coordinates.new(row_coordinate, column_coordiante)
  end

  def find_row_coordinate(character_symbol)
    character_row = find_row(character_symbol)
    @grid.index(character_row)
  end

  def find_column_coordinate(character_symbol)
    character_row = find_row(character_symbol)
    character_row.index(character_symbol)
  end

  def find_row(character_symbol)
    @grid.find do |row|
      row.include?(character_symbol)
    end
  end
end
