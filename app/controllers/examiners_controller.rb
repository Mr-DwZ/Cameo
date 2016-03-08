class ExaminersController < ApplicationController
  def show
    @user = Examiner.find_by_id session[:user_id]
    @exams = @user.exams.all
  end
end
