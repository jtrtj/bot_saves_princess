class PathFinder
  def initialize(dungeon_map)
    @dungeon_map = dungeon_map
  end

  def moves
    trajectory = trajectory
  end

  def trajectory
    mario_coordinates = @dungeon_map.character_coordinates("m")
    princess_coordinates = @dungeon_map.character_coordinates("p")
    [(mario_coordinates.first - princess_coordinates.first), (mario_coordinates.last - princess_coordinates.last)]
  end
end