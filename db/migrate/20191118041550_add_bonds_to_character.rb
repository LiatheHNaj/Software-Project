class AddBondsToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :bonds, :string
  end
end
