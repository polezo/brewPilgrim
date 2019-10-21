class CreateBreweryTags < ActiveRecord::Migration[6.0]
  def change
    create_table :brewery_tags do |t|
      t.integer :brewery_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
