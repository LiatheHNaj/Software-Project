class AddCharacterFkColToStats < ActiveRecord::Migration[6.0]
  def change
    add_reference :stats, :character, foreign_key: true
  end
end
