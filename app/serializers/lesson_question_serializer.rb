class LessonQuestionSerializer < ActiveModel::Serializer
  attributes :id, :order, :question, :lesson_id
end
