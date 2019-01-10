require './lib/save_princess.rb'

describe SavePrincess do
  context 'instance methods' do
    it '#displayPathtoPrincess(n, grid) - returns the directional moves required to rescue the princess' do
      save_princess = SavePrincess.new
      n = 3
      grid = [
        '---',
        '-m-',
        'p--'
      ]
      expected = %w[DOWN LEFT]

      expect(save_princess.displayPathtoPrincess(n, grid)).to eq(expected)
    end
  end
end
