class RenameTransactionColumns < ActiveRecord::Migration
  def change
  	rename_column :transactions, :target_id, :recipient_id
  	rename_column :transactions, :source_id, :user_id
  end
end
