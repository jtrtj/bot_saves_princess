require './lib/dungeon_map.rb'

describe DungeonMap do
  context 'instance variables' do
    it 'starts with a grid' do
      grid = [
        '---',
        '-m-',
        'p--'
      ]
      map = DungeonMap.new(grid)

      expect(map.instance_variable_get(:@grid)).to eq(grid)
    end
  end
end