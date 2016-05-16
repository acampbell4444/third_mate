class CreateChutes < ActiveRecord::Migration
  def change
    create_table :chutes do |t|
      t.boolean :turbulence
      t.integer :windspeed
      t.integer :min_wt
      t.integer :max_wt

      t.timestamps null: false
    end
  end
end
