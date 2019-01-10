class PathFinder
  def initialize(dungeon_map)
    @dungeon_map = dungeon_map
  end

  def moves
    trajectory_to_moves(trajectory)
  end

  def trajectory_to_moves(trajectory)
    moves = Array.new
        if trajectory.row_index_difference >= 0
            (trajectory.row_index_difference.abs).times do
                moves << "UP"
            end
        else
            (trajectory.row_index_difference.abs).times do
                moves << "DOWN"
            end
        end
        
        if trajectory.column_index_difference >= 0
            (trajectory.column_index_difference.abs).times do
                moves << "LEFT"
            end
        else
            (trajectory.column_index_difference.abs).times do
                moves << "RIGHT"
            end
        end
      return moves
  end

  def trajectory
    mario_coordinates = @dungeon_map.character_coordinates("m")
    princess_coordinates = @dungeon_map.character_coordinates("p")
    row_index_difference = mario_coordinates.row_index - princess_coordinates.row_index
    column_index_difference = mario_coordinates.column_index - princess_coordinates.column_index
    Trajectory.new(row_index_difference, column_index_difference)
  end
end