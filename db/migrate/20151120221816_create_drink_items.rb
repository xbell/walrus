class CreateDrinkItems < ActiveRecord::Migration
  def change
    create_table :drink_items do |t|
      t.text :name
      t.text :description
      t.text :region
      t.string :pricing
      t.integer :drink_section_id

      t.timestamps null: false
    end
  end
end
