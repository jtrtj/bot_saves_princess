require './lib/save_princess.rb'
require 'fixtures/grid_examples.rb'

# Example grid data is contained within spec/fixtures/grid_examples.rb

describe SavePrincess do
  context 'instance methods' do
    before(:all) do
      grid_examples = GridExamples.new
      @sml_grids = grid_examples.sml_grids
      @med_grids = grid_examples.med_grids
    end

    it '#displayPathtoPrincess(n, grid) - returns the directional moves required to rescue the princess' do
      save_princess = SavePrincess.new

      expect(save_princess.displayPathtoPrincess(@sml_grids[:grid_1])).to eq(@sml_grids[:grid_1_solution])
      expect(save_princess.displayPathtoPrincess(@sml_grids[:grid_2])).to eq(@sml_grids[:grid_2_solution])
      expect(save_princess.displayPathtoPrincess(@sml_grids[:grid_3])).to eq(@sml_grids[:grid_3_solution])
      expect(save_princess.displayPathtoPrincess(@sml_grids[:grid_4])).to eq(@sml_grids[:grid_4_solution])

      expect(save_princess.displayPathtoPrincess(@med_grids[:grid_1])).to eq(@med_grids[:grid_1_solution])
      expect(save_princess.displayPathtoPrincess(@med_grids[:grid_2])).to eq(@med_grids[:grid_2_solution])
      expect(save_princess.displayPathtoPrincess(@med_grids[:grid_3])).to eq(@med_grids[:grid_3_solution])
      expect(save_princess.displayPathtoPrincess(@med_grids[:grid_4])).to eq(@med_grids[:grid_4_solution])
    end

    it '#nextMove(n, r, c, grid) - returns the next directional move to rescue the princess' do
      grid = [
        '-----',
        '-----',
        'p--m-',
        '-----',
        '-----'
      ]
      save_princess = SavePrincess.new
      
      expect(save_princess.nextMove(grid)).to eq('LEFT')
    end
  end
end
