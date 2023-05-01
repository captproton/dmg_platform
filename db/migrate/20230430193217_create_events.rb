class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :happening_on
      t.string :title
      t.string :place
      t.string :more_info_link

      t.timestamps
    end
  end
end
