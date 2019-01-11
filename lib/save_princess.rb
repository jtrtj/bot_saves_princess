class SavePrincess
  def displayPathtoPrincess(_n, grid)
    map = DungeonMap.new(grid)
    path_finder = PathFinder.new(map)
    path_finder.moves
  end

  def nextMove(n, r, c, grid)
    moves = displayPathtoPrincess(n, grid)
    moves.first
  end
end
