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
#

class Stat < ApplicationRecord
end
