# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  class      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  race       :string
#  ideals     :string
#  bonds      :string
#  flaws      :string
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
