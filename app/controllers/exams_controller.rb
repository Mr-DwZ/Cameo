class ExamsController < ApplicationController
  def new

  end

  def create
    user = Examiner.find_by_id session[:user_id]
    param = params[:exam]
    begin_time = DateTime.new(param["begin(1i)"].to_i,
                              param["begin(2i)"].to_i,
                              param["begin(3i)"].to_i,
                              param["begin(4i)"].to_i,
                              param["begin(5i)"].to_i)


    exam = user.exams.create name: param[:name],
                             begin_time: begin_time,
                             duration: param[:duration].to_i

    if exam.save
      redirect_to examiner_path(user.username)
    end
  end

  def show
    @exam = Exam.find_by_id params[:id]
  end

  def destroy
    exam = Exam.find_by_id params[:id]
    exam.destroy
    redirect_to examiner_path(params[:examiner_username])
  end

  def exam_parms
    params.require(:exam).permit(:name, :number, :begin, :duration)
  end
end