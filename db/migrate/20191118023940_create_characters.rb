class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :class
      t.string :name
      t.string :race
      t.string :ideals
      t.string :bonds
      t.string :flaws

      t.timestamps
    end
  end
end
