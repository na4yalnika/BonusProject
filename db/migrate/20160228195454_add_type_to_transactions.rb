class AddTypeToTransactions < ActiveRecord::Migration
  def change
  	add_column :transactions, :type, :string
  	rename_column :transactions, :ammount, :amount
  	rename_column :transactions, :description, :comment
  end
end
