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
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
