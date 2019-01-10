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
      '-------m--',
      '----------',
      '----------',
      '----------',
      '----------'
    ]

    @map_1 = DungeonMap.new(@grid_1)
    @map_2 = DungeonMap.new(@grid_2)
    @path_finder = PathFinder.new(@map_2)
  end

  context 'instance variables' do
    it 'starts with a DungeonMap' do
      path_finder = PathFinder.new(@map_1)

      expect(path_finder.instance_variable_get(:@dungeon_map)).to eq(@map_1)
    end
  end

  context 'instance methods' do
    it '#moves - returns a list of moves required for mario to reach peach' do
      expected_moves = ['UP','UP','UP','UP','LEFT','LEFT','LEFT']

      expect(@path_finder.moves).to eq(expected_moves)
    end

    it "#establish_trajectory - creates a new trajectory according to the map data" do
      trajectory = @path_finder.establish_trajectory

      expect(trajectory).to be_a(Trajectory)
    end
  end
end
