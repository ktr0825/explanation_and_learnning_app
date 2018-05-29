class CreatePostedQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :posted_questions do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :posted_questions, [:user_id, :created_at]
  end
end
