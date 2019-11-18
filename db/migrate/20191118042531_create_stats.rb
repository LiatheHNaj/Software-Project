class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :level
      t.integer :strength
      t.integer :strength_mod
      t.integer :dexterity
      t.integer :dexterity_mod
      t.integer :constitution
      t.integer :constitution_mod
      t.integer :intelligence
      t.integer :intelligence_mod
      t.integer :wisdom
      t.integer :wisdom_mod
      t.integer :charisma
      t.integer :charisma_mod
      t.integer :initiative_bonus
      t.integer :proficiency_bonus
      t.integer :hitpoints
      t.integer :speed
      t.integer :passive_perception
      t.integer :armor_class
      t.string :hit_dice

      t.timestamps
    end
  end
end
