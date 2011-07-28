class CreateCuisines < ActiveRecord::Migration
  def self.up
    create_table :cuisines do |t|
      t.integer :restaurant_id
      t.integer :food_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cuisines
  end
end
