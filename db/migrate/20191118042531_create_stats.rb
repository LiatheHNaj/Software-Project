class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :level
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :initiative_bonus
      t.integer :ability_modifier
      t.integer :proficiency_bonus
      t.integer :hitpoints
      t.integer :speed
      t.integer :armor_class

      t.timestamps
    end
  end
end
