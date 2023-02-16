class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.text :emoji
      t.text :mood

      t.timestamps
    end
  end
end
