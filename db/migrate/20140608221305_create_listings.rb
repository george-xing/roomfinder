class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :city
      t.string :state
      t.string :country
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
