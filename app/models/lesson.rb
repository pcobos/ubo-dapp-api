class Lesson < ApplicationRecord
  belongs_to :course
  has_many :lesson_questions
end
