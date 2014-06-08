class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :city
      t.string :state
      t.string :country
      t.integer :price_lower
      t.integer :price_upper

      t.timestamps
    end
  end
end
