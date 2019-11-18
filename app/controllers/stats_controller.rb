class StatsController < ApplicationController
  
  def new
    Stats.level = 1

  end
  
  def roll(sides, number)
    roll_array = []
    number.times do
      roll_value = rand(sides) + 1
      roll_array << roll_value
    end
    roll_array.sort.reverse
    
  end

end
