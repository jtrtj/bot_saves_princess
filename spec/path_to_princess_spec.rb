require './lib/save_princess.rb'

describe SavePrincess do
  context 'instance methods' do
    before(:all) do
      @small_grids = {
        grid_1: [
          '---',
          '-m-',
          'p--'
        ],
        grid_2: [
          '---',
          '-m-',
          '--p'
        ],
        grid_3: [
          'p--',
          '-m-',
          '---'
        ],
        grid_4: [
          '--p',
          '-m-',
          '---'
        ],
        grid_1_solution: %w[DOWN LEFT],
        grid_2_solution: %w[DOWN RIGHT],
        grid_3_solution: %w[UP LEFT],
        grid_4_solution: %w[UP RIGHT]
      }

      @med_grids = {
        grid_1: [
          '----------',
          '----p-----',
          '----------',
          '----------',
          '----------',
          '-m--------',
          '----------',
          '----------',
          '----------',
          '----------'
        ],
        grid_2: [
          'm---------',
          '----------',
          '----------',
          '----------',
          '----------',
          '----------',
          '----------',
          '----------',
          '-------p--',
          '----------'
        ],
        grid_3: [
          '----------',
          '----------',
          '----------',
          '----------',
          '---p------',
          '----------',
          '----------',
          '----------',
          '----------',
          '--------m-'
        ],
        grid_4: [
          '----------',
          '----------',
          '----------',
          '----------',
          '-------m--',
          '----------',
          '----------',
          '----------',
          '----------',
          '-p--------'
        ],
        grid_1_solution: %w[UP UP UP UP RIGHT RIGHT RIGHT],
        grid_2_solution: %w[DOWN DOWN DOWN DOWN DOWN DOWN DOWN DOWN RIGHT RIGHT RIGHT RIGHT RIGHT RIGHT RIGHT],
        grid_3_solution: %w[UP UP UP UP UP LEFT LEFT LEFT LEFT LEFT],
        grid_4_solution: %w[DOWN DOWN DOWN DOWN DOWN LEFT LEFT LEFT LEFT LEFT LEFT]
      }
    end

    it '#displayPathtoPrincess(n, grid) - returns the directional moves required to rescue the princess' do
      save_princess = SavePrincess.new
      n = 3

      expect(save_princess.displayPathtoPrincess(n, @small_grids[:grid_1])).to eq(@small_grids[:grid_1_solution])
      expect(save_princess.displayPathtoPrincess(n, @small_grids[:grid_2])).to eq(@small_grids[:grid_2_solution])
      expect(save_princess.displayPathtoPrincess(n, @small_grids[:grid_3])).to eq(@small_grids[:grid_3_solution])
      expect(save_princess.displayPathtoPrincess(n, @small_grids[:grid_4])).to eq(@small_grids[:grid_4_solution])

      expect(save_princess.displayPathtoPrincess(n, @med_grids[:grid_1])).to eq(@med_grids[:grid_1_solution])
      expect(save_princess.displayPathtoPrincess(n, @med_grids[:grid_2])).to eq(@med_grids[:grid_2_solution])
      expect(save_princess.displayPathtoPrincess(n, @med_grids[:grid_3])).to eq(@med_grids[:grid_3_solution])
      expect(save_princess.displayPathtoPrincess(n, @med_grids[:grid_4])).to eq(@med_grids[:grid_4_solution])
    end
  end
end
