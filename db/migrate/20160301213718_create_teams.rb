class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :plan
      t.timestamps null: false
    end

    rename_column :users, :company, :team_id
  end
end
