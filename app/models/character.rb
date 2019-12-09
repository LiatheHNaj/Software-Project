# == Schema Information
#
# Table name: characters
#
#  id                 :integer          not null, primary key
#  character_class    :string
#  name               :string
#  race               :string
#  personality_traits :string
#  ideals             :string
#  bonds              :string
#  flaws              :string
#  is_spellcaster     :boolean
#  spell              :string
#  age                :integer
#  sex                :string
#  height             :string
#  hair_color         :string
#  language1          :string
#  language2          :string
#  language3          :string
#  language4          :string
#  alignment          :string
#  items              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#

class Character < ApplicationRecord
    has_one :stat, dependent: :destroy 
    belongs_to :user
    before_save :is_spellcaster, :hitpoints_calc

    def is_spellcaster
      temp_variable = false
      if character_class == "Wizard"
        temp_variable = true
      end
      temp_variable
    end

    def hitpoints_calc
        points=40
        if character_class=="Barbarian" || character_class=="Bard"
          points=35
        elsif character_class=="Druid" || character_class=="Druid"
          points=30
        elsif character_class=="Fighter" || character_class=="Monk"
          points=28
        elsif character_class=="Paladin" || character_class=="Ranger" || character_class=="Rogue"
          points=25
        elsif character_class=="Sorcerer" || character_class=="Warlock" || character_class=="Wizard"
          points=20
        end
        self.stat.hitpoints = points
    end


    validates :name, :race, :character_class, :personality_traits, :ideals, :flaws, :bonds, presence: true

end
