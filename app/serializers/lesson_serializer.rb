class LessonSerializer < ActiveModel::Serializer
  attributes :id, :description, :video_link, :course_id
  has_many :lesson_questions
end
