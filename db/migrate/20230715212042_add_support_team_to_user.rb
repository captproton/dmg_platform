class AddSupportTeamToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :support_team, :boolean, null: false, default: false
  end
end
