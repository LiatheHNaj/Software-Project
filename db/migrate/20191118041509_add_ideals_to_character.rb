class AddIdealsToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :ideals, :string
  end
end
