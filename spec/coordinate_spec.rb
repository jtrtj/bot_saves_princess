require './lib/coordinate.rb'

describe Coordinate do
  context 'instance variables' do
    it 'starts with a @row_index and a @column_index' do
      coordinate = Coordinate.new(2,1)
      expect(coordinate.row_index).to eq(2)
      expect(coordinate.column_index).to eq(1)
    end
  end
end