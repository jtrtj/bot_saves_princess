require './lib/coordinates.rb'

describe Coordinates do
  context 'instance variables' do
    it '@row_index and a @column_index' do
      coordinates = Coordinates.new(2, 1)
      expect(coordinates.row_index).to eq(2)
      expect(coordinates.column_index).to eq(1)
    end
  end
end
