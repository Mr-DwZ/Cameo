class ResultsController < ApplicationController
  def new

  end

  def create
    @exam = Exam.find_by_id params[:exam_id]
    @examinee = Examinee.find_by_id params[:result][:examinee_id]
    @exam.examinees << @examinee
    redirect_to examiner_exam_path(params[:examiner_username], params[:exam_id])
  end

  def destroy
    result = Result.find_by_id params[:id]
    result.destroy
    redirect_to examiner_exam_path(params[:examiner_username], params[:exam_id])
  end
end
