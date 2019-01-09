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
      expected_moves = ["UP","UP","UP","UP","LEFT","LEFT","LEFT"]

      expect(@path_finder.moves).to eq(expected_moves)
    end

    it "#trajectory - returns the difference between mario and peach's coordiantes" do
      expected_trajectory = [4,3]

      expect(@path_finder.trajectory).to eq(expected_trajectory)
    end
  end
end
