class ExamineesController < ApplicationController
  def show
    @user = Examinee.find_by_username params[:examinee_username]
  end
end
