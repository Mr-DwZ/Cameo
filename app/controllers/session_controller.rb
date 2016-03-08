class SessionController < ApplicationController
  def new

  end

  def create
    status = params[:session][:status]
    puts status
    if status
      @user = Examinee.find_by_username params[:session][:username]
      if status == 'Examinee'
        if @user && @user[:password] == params[:session][:password]
          flash[:success] = 'Login success as examinee'
          session[:user_id] = @user.id
          session[:name] = @user.name
          session[:status] = 'Examinee'
        else
          flash[:danger] = 'Invalid username or password.'
        end
      elsif status == 'Examiner'
        @user = Examiner.find_by_username params[:session][:username]
        if @user && @user[:password] == params[:session][:password]
          flash[:success] = 'Login success as examiner'
          session[:user_id] = @user.id
          session[:name] = @user.name
          session[:status] = 'Examiner'
          redirect_to examiner_path(@user.username)
        else
          flash[:danger] = 'Invalid username or password.'
        end
      else flash[:danger] = 'Invalid status'
      end
    else flash[:danger] = 'Empty status'
    end
  end
end
