## Bot Saves Princess I and II solution

This repo represents my solution to HackerRank's <a href="https://www.hackerrank.com/challenges/saveprincess/problem" target="_blank">Bot saves princess</a> & <a href="https://www.hackerrank.com/challenges/saveprincess2/problem" target="_blank">Bot saves princess - 2</a>

Given a grid, representing a dungeon with a bot('m') and a princess('p') marked on it, this code will find the necessary moves the bot must take to reach the princess.

For example:
  
  given this grid as __input__:

  ~~~ruby
  [
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
  ]
  ~~~
  
  the system will __output__:
  ~~~ruby
  ['UP', 'UP', 'UP', 'UP', 'RIGHT', 'RIGHT', 'RIGHT']
  ~~~

It was written using [Ruby 2.5.3](https://www.ruby-lang.org/en/news/2018/10/18/ruby-2-5-3-released/)

To check it out on your local machine:
  1. Clone this repository
  2. `$ cd bot_saves_princess`
  3. `$ bundle install`
  4. `$ rspec` - to checkout the test suite
  5. Code coverage can be viewed in `coverage/index.html` after running RSpec

To run it against HackerRank's test suite:
  1. Navigate to <a href="https://www.hackerrank.com/challenges/saveprincess/problem" target="_blank">https://www.hackerrank.com/challenges/saveprincess/problem</a>
  2. Replace all of the code in the "Current Buffer" textbox with this snippet:

        ~~~ruby 
        #!/bin/ruby

        def displayPathtoPrincess(n,grid)
          map = DungeonMap.new(grid)
          path_finder = PathFinder.new(map)
          puts path_finder.moves
        end

        class DungeonMap
          def initialize(grid)
            @grid = grid
          end

          def character_coordinates(character_symbol)
            row_coordinate = find_row_coordinate(character_symbol)
            column_coordiante = find_column_coordinate(character_symbol)
            Coordinates.new(row_coordinate, column_coordiante)
          end

          def find_row_coordinate(character_symbol)
            character_row = find_row(character_symbol)
            @grid.index(character_row)
          end

          def find_column_coordinate(character_symbol)
            character_row = find_row(character_symbol)
            character_row.index(character_symbol)
          end

          def find_row(character_symbol)
            @grid.find do |row|
              row.include?(character_symbol)
            end
          end
        end

        class PathFinder
          def initialize(dungeon_map)
            @dungeon_map = dungeon_map
          end

          def moves
            trajectory = establish_trajectory
            trajectory.determine_moves
            trajectory.moves
          end

          def establish_trajectory
            Trajectory.new(row_index_difference, column_index_difference)
          end

          private

          def row_index_difference
            mario_coordinates.row_index - princess_coordinates.row_index
          end

          def column_index_difference
            mario_coordinates.column_index - princess_coordinates.column_index
          end

          def mario_coordinates
            @mario_coordinates ||= @dungeon_map.character_coordinates('m')
          end

          def princess_coordinates
            @princess_coordinates ||= @dungeon_map.character_coordinates('p')
          end
        end

        class Trajectory
          attr_reader :row_index_difference, :column_index_difference, :moves
          def initialize(row_index_difference, column_index_difference)
            @row_index_difference = row_index_difference
            @column_index_difference = column_index_difference
            @moves = []
          end

          def determine_moves
            determine_vertical_moves
            determine_horizontal_moves
          end

          def determine_vertical_moves
            if @row_index_difference >= 0
              @row_index_difference.times do
                @moves << 'UP'
              end
            else
              @row_index_difference.abs.times do
                @moves << 'DOWN'
              end
            end
          end

          def determine_horizontal_moves
            if @column_index_difference >= 0
              @column_index_difference.times do
                @moves << 'LEFT'
              end
            else
              @column_index_difference.abs.times do
                @moves << 'RIGHT'
              end
            end
          end
        end

        class Coordinates
          attr_reader :row_index, :column_index
          def initialize(row_index, column_index)
            @row_index = row_index
            @column_index = column_index
          end
        end

        m = gets.to_i

        grid = Array.new(m)

        (0...m).each do |i|
            grid[i] = gets.strip
        end

        displayPathtoPrincess(m,grid)
        ~~~
    1. Then click "Run Code"
    2. Navigate to <a href="https://www.hackerrank.com/challenges/saveprincess2/problem" target="_blank">https://www.hackerrank.com/challenges/saveprincess2/problem</a>
    3. Replace all of the code in the "Current Buffer" textbox with this snippet:
        ~~~ruby
        #!/bin/ruby

        def nextMove(n,r,c,grid)
          moves = displayPathtoPrincess(n, grid)
          puts moves.first
        end

        def displayPathtoPrincess(n,grid)
          map = DungeonMap.new(grid)
          path_finder = PathFinder.new(map)
          path_finder.moves
        end

        class DungeonMap
          def initialize(grid)
            @grid = grid
          end

          def character_coordinates(character_symbol)
            row_coordinate = find_row_coordinate(character_symbol)
            column_coordiante = find_column_coordinate(character_symbol)
            Coordinates.new(row_coordinate, column_coordiante)
          end

          def find_row_coordinate(character_symbol)
            character_row = find_row(character_symbol)
            @grid.index(character_row)
          end

          def find_column_coordinate(character_symbol)
            character_row = find_row(character_symbol)
            character_row.index(character_symbol)
          end

          def find_row(character_symbol)
            @grid.find do |row|
              row.include?(character_symbol)
            end
          end
        end

        class PathFinder
          def initialize(dungeon_map)
            @dungeon_map = dungeon_map
          end

          def moves
            trajectory = establish_trajectory
            trajectory.determine_moves
            trajectory.moves
          end

          def establish_trajectory
            Trajectory.new(row_index_difference, column_index_difference)
          end

          private

          def row_index_difference
            mario_coordinates.row_index - princess_coordinates.row_index
          end

          def column_index_difference
            mario_coordinates.column_index - princess_coordinates.column_index
          end

          def mario_coordinates
            @mario_coordinates ||= @dungeon_map.character_coordinates('m')
          end

          def princess_coordinates
            @princess_coordinates ||= @dungeon_map.character_coordinates('p')
          end
        end

        class Trajectory
          attr_reader :row_index_difference, :column_index_difference, :moves
          def initialize(row_index_difference, column_index_difference)
            @row_index_difference = row_index_difference
            @column_index_difference = column_index_difference
            @moves = []
          end

          def determine_moves
            determine_vertical_moves
            determine_horizontal_moves
          end

          def determine_vertical_moves
            if @row_index_difference >= 0
              @row_index_difference.times do
                @moves << 'UP'
              end
            else
              @row_index_difference.abs.times do
                @moves << 'DOWN'
              end
            end
          end

          def determine_horizontal_moves
            if @column_index_difference >= 0
              @column_index_difference.times do
                @moves << 'LEFT'
              end
            else
              @column_index_difference.abs.times do
                @moves << 'RIGHT'
              end
            end
          end
        end

        class Coordinates
          attr_reader :row_index, :column_index
          def initialize(row_index, column_index)
            @row_index = row_index
            @column_index = column_index
          end
        end
        n = gets.to_i

        r,c = gets.strip.split.map {|num| num.to_i}

        grid = Array.new(n)

        (0...n).each do |i|
            grid[i] = gets
        end

        nextMove(n,r,c,grid)
        ~~~

    4. Then click "Run Code"
