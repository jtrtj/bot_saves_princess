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

    it '#trajectory_to_moves - tranlates trajectory values to moves' do
      trajectory_1 = Trajectory.new(0,1)
      trajectory_2 = Trajectory.new(-2,-3)
      trajectory_3 = Trajectory.new(4,3)

      expect(@path_finder.trajectory_to_moves(trajectory_1)).to eq(['LEFT'])
      expect(@path_finder.trajectory_to_moves(trajectory_2)).to eq(['DOWN','DOWN','RIGHT','RIGHT','RIGHT'])
      expect(@path_finder.trajectory_to_moves(trajectory_3)).to eq(['UP','UP','UP','UP','LEFT','LEFT','LEFT'])
    end
  end
end
