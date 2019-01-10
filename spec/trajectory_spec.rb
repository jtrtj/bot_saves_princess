require './lib/trajectory.rb'

describe Trajectory do
  context 'instance variables' do
    it 'starts with @row_index_difference, @column_index_difference and @moves' do
      trajectory = Trajectory.new(-1,2)
      expect(trajectory.instance_variable_get(:@row_index_difference)).to eq(-1)
      expect(trajectory.instance_variable_get(:@column_index_difference)).to eq(2)
      expect(trajectory.instance_variable_get(:@moves)).to eq([])
    end


  end
end