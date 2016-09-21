class AddRestoranIdToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :restoran_id, :integer
  end
end
