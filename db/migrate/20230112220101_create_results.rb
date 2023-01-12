class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.string :emoji
      t.string :mood

      t.timestamps
    end
  end
end