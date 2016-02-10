class RemoveFromtoFromTransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :target_id, :integer
  	add_column :transactions, :source_id, :integer
  	remove_column :transactions, :from, :integer
  	remove_column :transactions, :to, :integer
  end
end
