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
#  age                :integer
#  sex                :string
#  height             :string
#  hair_color         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#

#  id              :integer          not null, primary key
#  character_class :string
#  name            :string
#  race            :string
#  ideals          :string
#  personality_traits :string
#  bonds           :string
#  flaws           :string
#  age             :integer
#  sex             :string
#  height          :string
#  hair_color      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer

#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#

class Character < ApplicationRecord
    has_one :stat, dependent: :destroy 
    belongs_to :user


    validates :name, :race, :character_class, :personality_traits, :ideals, :flaws, :bonds, presence: true

end
