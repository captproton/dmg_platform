class RenamePrioritiyToPriorityInNavigations < ActiveRecord::Migration[7.0]
  def up
    rename_column :navigations, :prioritiy, :priority
  end

  def down
    rename_column :navigations, :priority, :prioritiy
  end
end
