class CreateSiteProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :site_profiles do |t|
      t.string :street01
      t.string :street02
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
