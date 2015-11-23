class CreateNewMenus < ActiveRecord::Migration
  def change
    create_table :new_menus do |t|
      t.string :name
      t.string :description
      t.string :sections

      t.timestamps null: false
    end
  end
end
