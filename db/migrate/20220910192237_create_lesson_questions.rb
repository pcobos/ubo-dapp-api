class CreateLessonQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :lesson_questions do |t|
      t.integer :order
      t.string :question
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
