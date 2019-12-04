# == Schema Information
#
# Table name: characters
#
#  id              :integer          not null, primary key
#  character_class :string
#  name            :string
#  race            :string
#  ideals          :string
#  bonds           :string
#  flaws           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#

class Character < ApplicationRecord
    has_one :stat
    belongs_to :user
    before_save :is_spellcaster

    validates :race, :character_class, presence: true

    def is_spell
      temp_variable = false
      if character_class == "Wizard"
        temp_variable = true
      end
      temp_variable
    end



end
