class AddCharacterFkColToStats < ActiveRecord::Migration[6.0]
  def change
    add_reference :stats, :character,:spell_type, foreign_key: true
  end
end
