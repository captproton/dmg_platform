class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.integer :rank_number
      t.string :name
      t.text :svg_icon
      t.string :link

      t.timestamps
    end
  end
end
