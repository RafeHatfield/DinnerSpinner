class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postcode
      t.boolean :open_lunch
      t.boolean :open_dinner
      t.boolean :open_breakfast
      t.boolean :takeaway
      t.boolean :deliver
      t.boolean :eatin

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
