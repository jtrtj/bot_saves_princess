require './lib/dungeon_map.rb'

describe DungeonMap do
  before(:all) do
    @grid_1 = [
      '---',
      '-m-',
      'p--'
    ]
    @expected_m_coordinates_1 = [1,1] 
    @expected_p_coordinates_1 = [2,0] 

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
    @expected_m_coordinates_2 = [5,7] 
    @expected_p_coordinates_2 = [1,4] 
  end

  context 'instance variables' do
    it 'starts with a grid' do
      map = DungeonMap.new(@grid_1)

      expect(map.instance_variable_get(:@grid)).to eq(@grid_1)
    end
  end

  context 'instance methods' do
    it '#character_coordinates(character_symbol) - returns grid matrix coordiantes of character on map according to provided character symbol' do
      map_1 = DungeonMap.new(@grid_1)
      map_2 = DungeonMap.new(@grid_2)

      expect(map_1.character_coordinates('m')).to eq(@expected_m_coordinates_1)
      expect(map_1.character_coordinates('p')).to eq(@expected_p_coordinates_1)
      expect(map_2.character_coordinates('m')).to eq(@expected_m_coordinates_2)
      expect(map_2.character_coordinates('p')).to eq(@expected_p_coordinates_2)
    end

    it '#find_row(character_symbol) - returns the row specified character is located in' do
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

    it '#find_row_coordinate(character_symbol) - returns grid matrix coordinate for character location row' do
      map = DungeonMap.new(@grid_1)

      expect(map.find_row_coordinate('m')).to eq(@expected_m_coordinates_1.first)
      expect(map.find_row_coordinate('p')).to eq(@expected_p_coordinates_1.first)
    end

    it '#find_column_coordinate(character_symbol) - returns grid matrix coordinate for character location column' do
      map = DungeonMap.new(@grid_1)

      expect(map.find_column_coordinate('m')).to eq(@expected_m_coordinates_1.last)
      expect(map.find_column_coordinate('p')).to eq(@expected_p_coordinates_1.last)
    end
  end
end