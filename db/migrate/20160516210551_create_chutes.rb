class CreateChutes < ActiveRecord::Migration
  def change
    create_table :chutes do |t|
      t.string  :parachute
      t.boolean :zippers
      t.integer :windspeed
      t.timestamps null: false
    end
  end
end
