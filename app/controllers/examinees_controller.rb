class ExamineesController < ApplicationController
  def show
    @user = Examinee.find_by_id session[:user_id]
    @exams = @user.exams.all
  end
end
