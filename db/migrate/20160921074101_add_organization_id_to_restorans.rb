class AddOrganizationIdToRestorans < ActiveRecord::Migration[5.0]
  def change
    add_column :restorans, :organization_id, :integer
  end
end
