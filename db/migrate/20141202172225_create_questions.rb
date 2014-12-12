class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :answer
      t.integer :publication_id
      t.integer :user_id
      t.datetime :answer_date

      t.timestamps
    end
  end
end
