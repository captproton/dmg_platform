class CreateNavigations < ActiveRecord::Migration[7.0]
  def change
    create_table :navigations do |t|
      t.string :key
      t.string :name
      t.string :url
      t.integer :prioritiy
      t.jsonb :options

      t.timestamps
    end
  end
end
