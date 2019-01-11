require './lib/path_finder.rb'

describe PathFinder do
  before(:all) do
    @grid_1 = [
      '---',
      '-m-',
      'p--'
    ]

    @grid_2 = [
      '----------',
      '----p-----',
      '----------',
      '----------',
      '----------',
      '-m--------',
      '----------',
      '----------',
      '----------',
      '----------'
    ]

    @map_1 = DungeonMap.new(@grid_1)
    @map_2 = DungeonMap.new(@grid_2)
    @path_finder_1 = PathFinder.new(@map_1)
    @path_finder_2 = PathFinder.new(@map_2)
  end

  context 'instance variables' do
    it '@dungeon_map' do
      expect(@path_finder_1.instance_variable_get(:@dungeon_map)).to eq(@map_1)
    end
  end

  context 'instance methods' do
    it '#moves - returns a list of moves required for mario to reach peach' do
      expected_moves_1 = %w[DOWN LEFT]
      expected_moves_2 = %w[UP UP UP UP RIGHT RIGHT RIGHT]

      expect(@path_finder_1.moves).to eq(expected_moves_1)
      expect(@path_finder_2.moves).to eq(expected_moves_2)
    end

    it '#establish_trajectory - creates a new trajectory according to the map data' do
      trajectory_1 = @path_finder_1.establish_trajectory
      trajectory_2 = @path_finder_2.establish_trajectory

      expect(trajectory_1).to be_a(Trajectory)
      expect(trajectory_1.row_index_difference).to eq(-1)
      expect(trajectory_1.column_index_difference).to eq(1)
      expect(trajectory_2).to be_a(Trajectory)
      expect(trajectory_2.row_index_difference).to eq(4)
      expect(trajectory_2.column_index_difference).to eq(-3)
    end
  end
end
