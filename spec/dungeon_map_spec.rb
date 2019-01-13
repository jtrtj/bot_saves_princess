require './lib/dungeon_map.rb'

describe DungeonMap do
  before(:all) do
    @grid_1 = [
      '---',
      '-m-',
      'p--'
    ]
    @expected_m_coordinates_1 = Coordinates.new(1, 1)
    @expected_p_coordinates_1 = Coordinates.new(2, 0)

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
    @expected_m_coordinates_2 = Coordinates.new(5, 7)
    @expected_p_coordinates_2 = Coordinates.new(1, 4)
  end

  context 'instance variables' do
    it '@grid' do
      map = DungeonMap.new(@grid_1)

      expect(map.instance_variable_get(:@grid)).to eq(@grid_1)
    end
  end

  context 'instance methods' do
    it '#character_coordinates(character_symbol) - returns grid matrix Coordiantes of character on map according to provided character symbol' do
      map = DungeonMap.new(@grid_2)
      map_m_coordinates = map.character_coordinates('m')
      map_p_coordinates = map.character_coordinates('p')

      expect(map_m_coordinates).to be_a(Coordinates)
      expect(map_p_coordinates).to be_a(Coordinates)
      expect(map_m_coordinates.row_index).to eq(@expected_m_coordinates_2.row_index)
      expect(map_m_coordinates.column_index).to eq(@expected_m_coordinates_2.column_index)
      expect(map_p_coordinates.row_index).to eq(@expected_p_coordinates_2.row_index)
      expect(map_p_coordinates.column_index).to eq(@expected_p_coordinates_2.column_index)
    end

    it '#find_row(character_symbol) - returns the row specified character is located in' do
      map = DungeonMap.new(@grid_1)
      expected_m_row = '-m-'
      expected_p_row = 'p--'

      expect(map.find_row('m')).to eq(expected_m_row)
      expect(map.find_row('p')).to eq(expected_p_row)
    end

    it '#find_row_coordinate(character_symbol) - returns grid matrix coordinate for character location row' do
      map = DungeonMap.new(@grid_1)

      expect(map.find_row_coordinate('m')).to eq(@expected_m_coordinates_1.row_index)
      expect(map.find_row_coordinate('p')).to eq(@expected_p_coordinates_1.row_index)
    end

    it '#find_column_coordinate(character_symbol) - returns grid matrix coordinate for character location column' do
      map = DungeonMap.new(@grid_1)

      expect(map.find_column_coordinate('m')).to eq(@expected_m_coordinates_1.column_index)
      expect(map.find_column_coordinate('p')).to eq(@expected_p_coordinates_1.column_index)
    end
  end
end
