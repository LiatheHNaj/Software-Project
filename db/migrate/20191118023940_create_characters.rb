class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :class
      t.string :name
      t.string :race
      t.string :personality_traits
      t.string :ideals
      t.string :bonds
      t.string :flaws
      t.integer :age
      t.string :sex
      t.string :height
      t.string :hair_color

      
      t.timestamps
    end
  end
end
