class Transactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.string :card_type
      t.integer :card_number
      t.integer :cvv
      t.integer :month
      t.integer :year
      t.boolean :status
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
