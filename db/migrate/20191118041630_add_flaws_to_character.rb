class AddFlawsToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :flaws, :string
  end
end
