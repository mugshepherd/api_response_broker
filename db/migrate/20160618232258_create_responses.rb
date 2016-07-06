class CreateResponses < ActiveRecord::Migration
  def change
  	create_table :responses do |t|
      t.integer :lemurs_quantity
      t.date  :month_and_year
      t.text :lemur_category
      t.string :location_admin1
      t.string :location_admin2
      t.integer :record_id
      t.string :sighting_year
      t.string :sighting_month
    end
  end
end
