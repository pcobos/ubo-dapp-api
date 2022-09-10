class Api::LessonQuestionsController < ApplicationController
  before_action :set_lesson_question, only: %i[ show update destroy ]

  # GET /lesson_questions
  def index
    @lesson_questions = LessonQuestion.all

    render json: @lesson_questions
  end

  # GET /lesson_questions/1
  def show
    render json: @lesson_question
  end

  # POST /lesson_questions
  def create
    @lesson_question = LessonQuestion.new(lesson_question_params)

    if @lesson_question.save
      render json: @lesson_question, status: :created, location: @lesson_question
    else
      render json: @lesson_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lesson_questions/1
  def update
    if @lesson_question.update(lesson_question_params)
      render json: @lesson_question
    else
      render json: @lesson_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lesson_questions/1
  def destroy
    @lesson_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_question
      @lesson_question = LessonQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_question_params
      params.require(:lesson_question).permit(:order, :question, :lesson_id)
    end
end
