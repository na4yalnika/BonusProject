class ChangeTeamColumnType < ActiveRecord::Migration
  change_table :users do |t|
    t.change :team_id, :integer
  end
end
