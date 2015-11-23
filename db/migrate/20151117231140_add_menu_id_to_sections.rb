class AddMenuIdToSections < ActiveRecord::Migration
  def change
    add_column :sections, :menu_id, :integer
  end
end
