class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.text :answer_1
      t.text :answer_2
      t.text :answer_3

      t.timestamps
    end
  end
end
