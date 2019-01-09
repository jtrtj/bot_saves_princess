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

      expect(map.character_coordinates('m')).to eq(expected_m_location)
      expect(map.character_coordinates('p')).to eq(expected_p_location)
    end

    it '#find_row(character_symbol) - returns the character location row index' do
      grid = [
        'm--',
        '---',
        '--p'
      ]
      map = DungeonMap.new(grid)
      expected_m_row = 'm--'
      expected_p_row = '--p'

      expect(map.find_row('m')).to eq(expected_m_row)
      expect(map.find_row('p')).to eq(expected_p_row)
    end

    it '#find_row_coordinate(character_symbol) - returns grid matrix coordinae for character location row' do
      grid = [
        'm--',
        '---',
        '--p'
      ]
      map = DungeonMap.new(grid)
      expected_m_row_coordinate = 0
      expected_p_row_coordinate = 2

      expect(map.find_row_coordinate('m')).to eq(expected_m_row_coordinate)
      expect(map.find_row_coordinate('p')).to eq(expected_p_row_coordinate)
    end

    it '#find_column_coordinate(character_symbol) - returns grid matrix coordinae for character location column' do
      grid = [
        'm--',
        '---',
        '--p'
      ]
      map = DungeonMap.new(grid)
      expected_m_column_coordinate = 0
      expected_p_column_coordinate = 2

      expect(map.find_column_coordinate('m')).to eq(expected_m_column_coordinate)
      expect(map.find_column_coordinate('p')).to eq(expected_p_column_coordinate)
    end
  end
end