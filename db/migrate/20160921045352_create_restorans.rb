class CreateRestorans < ActiveRecord::Migration[5.0]
  def change
    create_table :restorans do |t|
      t.string :name
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
