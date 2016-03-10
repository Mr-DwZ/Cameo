class CodesController < ApplicationController
  def new

  end

  def create
    @user = Examinee.find_by_id session[:user_id]
    @exam = @user.exams.find_by params[:exam_id]
    @question = @exam.questions.find_by_id params[:question_id]
    @code = @question.codes.new code_block: params[:code_block],
                                language: params[:code][:language]
    if @code.save
      render "submit_success.html.erb"
    end
  end
end
