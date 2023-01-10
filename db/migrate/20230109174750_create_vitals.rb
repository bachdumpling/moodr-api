class CreateVitals < ActiveRecord::Migration[7.0]
  def change
    create_table :vitals do |t|
      t.integer :user_id
      t.decimal :heart_rate
      t.decimal :wrist_temperature

      t.timestamps
    end
  end
end
