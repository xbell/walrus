class CreateDrinkSections < ActiveRecord::Migration
  def change
    create_table :drink_sections do |t|
      t.text :name
      t.text :description

      t.timestamps null: false
    end
  end
end
