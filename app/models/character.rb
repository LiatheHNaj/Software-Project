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

    validates :race, :character_class, presence: true
end
