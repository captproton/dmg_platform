class AddKindToPlatform < ActiveRecord::Migration[7.0]
  def change
    add_column :platforms, :kind, :string
  end
end
