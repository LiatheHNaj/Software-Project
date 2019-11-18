# == Schema Information
#
# Table name: stats
#
#  id                :integer          not null, primary key
#  level             :integer
#  strength          :integer
#  dexterity         :integer
#  constitution      :integer
#  intelligence      :integer
#  wisdom            :integer
#  charisma          :integer
#  initiative_bonus  :integer
#  ability_modifier  :integer
#  proficiency_bonus :integer
#  hitpoints         :integer
#  speed             :integer
#  armor_class       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Stat < ApplicationRecord
end
