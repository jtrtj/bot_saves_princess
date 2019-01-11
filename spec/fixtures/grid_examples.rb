class GridExamples
  def sml_grids
    {
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
  end

  def med_grids
    {
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

  def next_move_grids
    {
      grid_1: [
        '-----',
        '-----',
        'p--m-',
        '-----',
        '-----'
      ],
      grid_2: [
        '-----',
        '-----',
        'm--p-',
        '-----',
        '-----'
      ],
      grid_3: [
        '-----',
        '--m--',
        '-----',
        '--p--',
        '-----'
      ],
      grid_4: [
        '-----',
        '--p--',
        '-----',
        '--m--',
        '-----'
      ],
      grid_1_solution: 'LEFT',
      grid_2_solution: 'RIGHT',
      grid_3_solution: 'DOWN',
      grid_4_solution: 'UP'
    }

  end
end