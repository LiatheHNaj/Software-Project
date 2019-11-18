class StatsController < ApplicationController
  
  def new
    Stats.level = 1
    
  end
  
  def stats_roll(sides, number)
    roll_array = []
    number.times do
      roll_value = rand(sides) + 1
      roll_array << roll_value
    end
    roll_array = roll_array.sort.reverse
    roll_array.pop
    roll_array.pop
    total = roll_array.sum
    if total < 10
      total = 10
    total
  end

end
