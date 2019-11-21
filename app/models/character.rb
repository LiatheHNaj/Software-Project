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
#

class Character < ApplicationRecord
    validates :race, :class, presence: true
end
