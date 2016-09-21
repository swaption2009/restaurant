class ChangeNameTypeInPlans < ActiveRecord::Migration[5.0]
  def change
    change_column :plans, :name, :string
  end
end
