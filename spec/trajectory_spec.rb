require './lib/trajectory.rb'

describe Trajectory do
  context 'instance variables' do
    it '@row_index_difference, @column_index_difference and @moves' do
      trajectory = Trajectory.new(-1, 2)

      expect(trajectory.row_index_difference).to eq(-1)
      expect(trajectory.column_index_difference).to eq(2)
      expect(trajectory.moves).to eq([])
    end
  end

  context 'instance methods' do
    it '#determine_moves - translates grid trajectory to sequence of DOWN, UP, LEFT or RIGHT moves' do
      trajectory_1 = Trajectory.new(0, 1)
      trajectory_2 = Trajectory.new(-2, -3)
      trajectory_3 = Trajectory.new(4, 3)
      trajectory_1.determine_moves
      trajectory_2.determine_moves
      trajectory_3.determine_moves

      expect(trajectory_1.moves).to eq(['LEFT'])
      expect(trajectory_2.moves).to eq(%w[DOWN DOWN RIGHT RIGHT RIGHT])
      expect(trajectory_3.moves).to eq(%w[UP UP UP UP LEFT LEFT LEFT])
    end

    it '#determine_vertical_moves - adds vertical moves to @moves list' do
      trajectory_1 = Trajectory.new(4, 3)
      trajectory_2 = Trajectory.new(-2, -3)
      trajectory_1.determine_vertical_moves
      trajectory_2.determine_vertical_moves

      expect(trajectory_1.moves).to eq(%w[UP UP UP UP])
      expect(trajectory_2.moves).to eq(%w[DOWN DOWN])
    end

    it '#determine_horizontal_moves - adds horizontal moves to @moves list' do
      trajectory_1 = Trajectory.new(4, 3)
      trajectory_2 = Trajectory.new(-2, -3)
      trajectory_1.determine_horizontal_moves
      trajectory_2.determine_horizontal_moves

      expect(trajectory_1.moves).to eq(%w[LEFT LEFT LEFT])
      expect(trajectory_2.moves).to eq(%w[RIGHT RIGHT RIGHT])
    end
  end
end
