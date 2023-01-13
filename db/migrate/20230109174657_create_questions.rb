class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3

      t.timestamps
    end
  end
end
