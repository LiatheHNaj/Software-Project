class StatsController < ApplicationController
  
    def new
      Stats.level = 1
      Stats.strength = stats_roll(6,4)
      Stats.dexterity = stats_roll(6,4)
      Stats.constitution = stats_roll(6,4)
      Stats.intelligence = stats_roll(6,4)
      Stats.wisdom = stats_roll(6,4)
      Stats.charisma = stats_roll(6,4)
      Stats.strength_mod = mod_calc(Stats.strength)
      Stats.dexterity_mod = mod_calc(Stats.dexterity)
      Stats.constitution_mod = mod_calc(Stats.constitution)
      Stats.intelligence_mod = mod_calc(Stats.intelligence)
      Stats.wisdom_mod = mod_calc(Stats.wisdom)
      Stats.charisma_mod = mod_calc(Stats.charisma)
      Stats.armor_class = 15
      Stats.hitpoints = 45
      Stats.speed = 30
      Stats.hit_dice = "1d10"
      Stats.proficiency_bonus = 2
      Stats.initiative_bonus = Stats.dexterity_mod
      Stats.passive_perception = (10 + Stats.wisdom_mod)
      redirect_to characters_path
    end
  
    def stats_roll(sides, number)
      roll_array = []
      number.times do
        roll_value = rand(sides) + 1
        roll_array << roll_value
      end
      roll_array = roll_array.sort.reverse
      roll_array.pop
      total = roll_array.sum
      if total < 10
        total = 10
      total
    end

    def mod_calc(ability)
      mod=0
      if ability==10|11
        mod=0
      elsif ability==12|13
        mod=1
      elsif ability==14|15
        mod=2
      elsif ability==16|17
        mod=3
      elsif ability==18|19
        mod=4
      elsif ability>=20
        mod=5
      mod
    end

end
