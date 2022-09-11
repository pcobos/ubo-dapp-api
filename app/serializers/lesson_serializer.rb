class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :video_link, :course_id
  has_many :lesson_questions
end
