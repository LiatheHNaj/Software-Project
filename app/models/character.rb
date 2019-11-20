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

class Character < ApplicationRecord
end
