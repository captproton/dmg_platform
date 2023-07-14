class AddLastNameToLead < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :last_name, :string
  end
end
