require './lib/save_princess.rb'
require 'fixtures/grid_examples.rb'

# Example grid data is contained within spec/fixtures/grid_examples.rb

describe SavePrincess do
  before(:all) do
    grid_examples = GridExamples.new
    @sml_grids = grid_examples.sml_grids
    @med_grids = grid_examples.med_grids
    @lrg_grids = grid_examples.lrg_grids
    @next_move_grids = grid_examples.next_move_grids

    @save_princess = SavePrincess.new
  end

  context 'instance methods' do
    it '#displayPathtoPrincess(grid) - returns the directional moves required to rescue the princess' do
      expect(@save_princess.displayPathtoPrincess(@sml_grids[:grid_1])).to eq(@sml_grids[:grid_1_solution])
      expect(@save_princess.displayPathtoPrincess(@sml_grids[:grid_2])).to eq(@sml_grids[:grid_2_solution])
      expect(@save_princess.displayPathtoPrincess(@sml_grids[:grid_3])).to eq(@sml_grids[:grid_3_solution])
      expect(@save_princess.displayPathtoPrincess(@sml_grids[:grid_4])).to eq(@sml_grids[:grid_4_solution])

      expect(@save_princess.displayPathtoPrincess(@med_grids[:grid_1])).to eq(@med_grids[:grid_1_solution])
      expect(@save_princess.displayPathtoPrincess(@med_grids[:grid_2])).to eq(@med_grids[:grid_2_solution])
      expect(@save_princess.displayPathtoPrincess(@med_grids[:grid_3])).to eq(@med_grids[:grid_3_solution])
      expect(@save_princess.displayPathtoPrincess(@med_grids[:grid_4])).to eq(@med_grids[:grid_4_solution])

      expect(@save_princess.displayPathtoPrincess(@lrg_grids[:grid_1])).to eq(@lrg_grids[:grid_1_solution])
      expect(@save_princess.displayPathtoPrincess(@lrg_grids[:grid_2])).to eq(@lrg_grids[:grid_2_solution])
    end

    it '#nextMove(grid) - returns the next directional move to rescue the princess' do
      expect(@save_princess.nextMove(@next_move_grids[:grid_1])).to eq(@next_move_grids[:grid_1_solution])
      expect(@save_princess.nextMove(@next_move_grids[:grid_2])).to eq(@next_move_grids[:grid_2_solution])
      expect(@save_princess.nextMove(@next_move_grids[:grid_3])).to eq(@next_move_grids[:grid_3_solution])
      expect(@save_princess.nextMove(@next_move_grids[:grid_4])).to eq(@next_move_grids[:grid_4_solution])
    end
  end
end
