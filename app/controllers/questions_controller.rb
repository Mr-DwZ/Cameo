class QuestionsController < ApplicationController
  def new

  end

  def create
    @exam = Exam.find_by_id(params[:exam_id])
    puts params[:name]
    @question = Question.new name: params[:question][:name],
                             description: params[:description],
                             score: params[:question][:score],
                             input: params[:input],
                             output: params[:output],
                             sample_input: params[:sample_input],
                             sample_output: params[:sample_output],
                             test_input: params[:test_input],
                             test_output: params[:test_output]

    @exam.questions << @question
    redirect_to examiner_exam_path(params[:examiner_username], params[:exam_id])
  end

  def destroy
    @question = Question.find_by_id params[:id]
    @question.destroy
    redirect_to examiner_exam_path(params[:examiner_username], params[:exam_id])
  end
end
