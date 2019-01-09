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
  end

  context 'instance variables' do
    it 'starts with a DungeonMap' do
      path_finder = PathFinder.new(@map_1)

      expect(path_finder.instance_variable_get(:map)).to eq(@map_1)
    end
  end
end
