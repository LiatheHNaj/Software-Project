# == Schema Information
#
# Table name: stats
#
#  id                 :integer          not null, primary key
#  level              :integer
#  strength           :integer
#  strength_mod       :integer
#  dexterity          :integer
#  dexterity_mod      :integer
#  constitution       :integer
#  constitution_mod   :integer
#  intelligence       :integer
#  intelligence_mod   :integer
#  wisdom             :integer
#  wisdom_mod         :integer
#  charisma           :integer
#  charisma_mod       :integer
#  initiative_bonus   :integer
#  proficiency_bonus  :integer
#  hitpoints          :integer
#  speed              :integer
#  passive_perception :integer
#  armor_class        :integer
#  hit_dice           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  character_id       :integer
#
# Indexes
#
#  index_stats_on_character_id  (character_id)
#

class Stat < ApplicationRecord
    belongs_to :character, dependent: :destroy
    before_save :setUpStats

    def setUpStats
        self.level = 1
        self.strength = stats_roll(6,4)
        self.dexterity = stats_roll(6,4)
        self.constitution = stats_roll(6,4)
        self.intelligence = stats_roll(6,4)
        self.wisdom = stats_roll(6,4)
        self.charisma = stats_roll(6,4)
        self.strength_mod = mod_calc(self.strength)
        self.dexterity_mod = mod_calc(self.dexterity)
        self.constitution_mod = mod_calc(self.constitution)
        self.intelligence_mod = mod_calc(self.intelligence)
        self.wisdom_mod = mod_calc(self.wisdom)
        self.charisma_mod = mod_calc(self.charisma)
        self.armor_class = 15
        self.hitpoints = 45
        self.speed = 30
        self.hit_dice = "1d10"
        self.proficiency_bonus = 2
        self.initiative_bonus = self.dexterity_mod
        self.passive_perception = (10 + self.wisdom_mod)
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
        end
        total
      end
  
      def mod_calc(ability)
        mod=0
        if ability==10 || ability==11
          mod=0
        elsif ability==12 || ability==13
          mod=1
        elsif ability==14 || ability==15
          mod=2
        elsif ability==16 || ability==17
          mod=3
        elsif ability==18 || ability==19
          mod=4
        elsif ability>=20
          mod=5
        end
        mod
      end
end
