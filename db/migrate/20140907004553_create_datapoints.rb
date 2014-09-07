class CreateDatapoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.integer :device_id, null: false
      t.integer :watts
      t.datetime :sample_time
      t.timestamps
    end
    add_index :data_points, :device_id
  end
end
