class AddMenusIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :menu_id, :integer
  end
end
