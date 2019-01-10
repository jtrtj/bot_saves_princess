class PathFinder
  def initialize(dungeon_map)
    @dungeon_map = dungeon_map
  end

  def moves
    trajectory_to_moves(trajectory)
  end

  def trajectory_to_moves(trajectory)
    moves = Array.new
        if trajectory.first >= 0
            (trajectory.first.abs).times do
                moves << "UP"
            end
        else
            (trajectory.first.abs).times do
                moves << "DOWN"
            end
        end
        
        if trajectory.last >= 0
            (trajectory.last.abs).times do
                moves << "LEFT"
            end
        else
            (trajectory.last.abs).times do
                moves << "RIGHT"
            end
        end
      return moves
  end

  def trajectory
    mario_coordinates = @dungeon_map.character_coordinates("m")
    princess_coordinates = @dungeon_map.character_coordinates("p")
    [(mario_coordinates.row_index - princess_coordinates.row_index),
     (mario_coordinates.column_index - princess_coordinates.column_index)]
  end
end