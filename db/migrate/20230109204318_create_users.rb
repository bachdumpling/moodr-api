class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :username
      t.integer :age
      t.text :firstname
      t.text :lastname
      t.text :email
      t.text :password_digest

      t.timestamps
    end
  end
end
