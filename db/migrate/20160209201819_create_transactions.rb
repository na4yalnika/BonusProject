class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :from, :to
      t.integer :ammount
      t.text :description
      t.timestamps null: false
    end
  end
end
