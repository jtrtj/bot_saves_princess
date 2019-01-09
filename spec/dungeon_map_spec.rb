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

  context 'instance methods' do
    it '#character_coordinates(character_symbol) - returns grid matrix coordiantes of character on map according to provided character symbol' do
      grid = [
        'm--',
        '---',
        '--p'
      ]
      map = DungeonMap.new(grid)
      expected_m_location = [0,0]
      expected_p_location = [2,2]

      expect(map.character_coordinates("m")).to eq(expected_m_location)
      expect(map.character_coordinates("p")).to eq(expected_p_location)
    end
  end
end