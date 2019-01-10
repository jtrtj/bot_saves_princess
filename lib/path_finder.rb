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
    Trajectory.new(row_index_difference, column_index_difference)
  end

  private

  def row_index_difference
    mario_coordinates.row_index - princess_coordinates.row_index
  end

  def column_index_difference
    mario_coordinates.column_index - princess_coordinates.column_index
  end

  def mario_coordinates
    @mario_coordinates ||= @dungeon_map.character_coordinates('m')
  end

  def princess_coordinates
    @princess_coordinates ||= @dungeon_map.character_coordinates('p')
  end
end
