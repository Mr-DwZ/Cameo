class SessionController < ApplicationController
  def new

  end

  def create
    puts params
    status = params[:session][:status]

    if status
      if status == 'Examinee'
        user = Examinee.find_by_username params[:session][:username]
        if user && user.password == params[:session][:password]
          flash[:success] = "Login success as examinee"
          session[:user_id] = user.id
          session[:status] = 'Examinee'
        else flash[:danger] = "Invalid username or password."
        end

      elsif status == 'Examiner'
        user = Examiner.find_by_username params[:session][:username]
        if user && user.password == params[:session][:password]
          flash[:success] = "Login success as examiner"
          session[:user_id] = user.id
          session[:status] = 'Examiner'
        else flash[:danger] = "Invalid username or password."
        end

      else flash[:danger] = "Invalid status"
      end
    else
      flash[:danger] = "Empty status"
    end

    redirect_to login_path
  end
end
