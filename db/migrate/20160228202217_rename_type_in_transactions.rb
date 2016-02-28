class RenameTypeInTransactions < ActiveRecord::Migration
  def change
  	rename_column :transactions, :type, :tag
  end
end
