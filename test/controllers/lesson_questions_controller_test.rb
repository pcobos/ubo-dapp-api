require "test_helper"

class LessonQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_question = lesson_questions(:one)
  end

  test "should get index" do
    get lesson_questions_url, as: :json
    assert_response :success
  end

  test "should create lesson_question" do
    assert_difference("LessonQuestion.count") do
      post lesson_questions_url, params: { lesson_question: { lesson_id: @lesson_question.lesson_id, order: @lesson_question.order, question: @lesson_question.question } }, as: :json
    end

    assert_response :created
  end

  test "should show lesson_question" do
    get lesson_question_url(@lesson_question), as: :json
    assert_response :success
  end

  test "should update lesson_question" do
    patch lesson_question_url(@lesson_question), params: { lesson_question: { lesson_id: @lesson_question.lesson_id, order: @lesson_question.order, question: @lesson_question.question } }, as: :json
    assert_response :success
  end

  test "should destroy lesson_question" do
    assert_difference("LessonQuestion.count", -1) do
      delete lesson_question_url(@lesson_question), as: :json
    end

    assert_response :no_content
  end
end
