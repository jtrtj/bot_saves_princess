class PathFinder
  def initialize(dungeon_map)
    @dungeon_map = dungeon_map
  end

  def moves
    trajectory = establish_trajectory
    trajectory.determine_moves
    trajectory.moves
  end

  def establish_trajectory
    mario_coordinates = @dungeon_map.character_coordinates("m")
    princess_coordinates = @dungeon_map.character_coordinates("p")
    row_index_difference = mario_coordinates.row_index - princess_coordinates.row_index
    column_index_difference = mario_coordinates.column_index - princess_coordinates.column_index
    Trajectory.new(row_index_difference, column_index_difference)
  end
end