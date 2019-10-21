class CreateBrewqueues < ActiveRecord::Migration[6.0]
  def change
    create_table :brewqueues do |t|
      t.integer :user_id
      t.integer :brewery_id

      t.timestamps
    end
  end
end
