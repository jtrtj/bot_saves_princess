class SavePrincess
  def displayPathtoPrincess(grid)
    map = DungeonMap.new(grid)
    path_finder = PathFinder.new(map)
    path_finder.moves
  end

  def nextMove(grid)
    moves = displayPathtoPrincess(grid)
    moves.first
  end
end
