class ResultsController < ApplicationController
  def new

  end

  def create
    @result = Result.new
    @result.examinee = Examinee.find_by_id params[:result][:examinee_id]
    @result.exam = Exam.find_by_id params[:exam_id]
    @result.save
    @exam = Exam.find_by_id session[:user_id]
    @exam.results << @result
    redirect_to examiner_exam_path(params[:examiner_username], params[:exam_id])
  end

  def destroy

  end
end
