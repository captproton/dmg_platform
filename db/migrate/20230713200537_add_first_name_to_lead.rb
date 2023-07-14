class AddFirstNameToLead < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :first_name, :string
  end
end
