class SessionController < ApplicationController
  def new

  end

  def create
    status = params[:session][:status]

    if status
      model = case status
                when 'Examinee'
                  Examinee
                when 'Examiner'
                  Examiner
                else
                  nil
              end

      if model
        @user = model.find_by_username params[:session][:username]

        if @user && @user[:password] == params[:session][:password]
          flash[:success] = 'Login success as ' + status
          session[:user_id] = @user.id
          session[:name] = @user.name
          session[:status] = status
          if status == "Examiner"
            redirect_to examiner_path(params[:session][:username])
          else
            redirect_to examinee_path(params[:session][:username])
          end
        else
          flash[:danger] = 'Invalid username or password.'
          render "new"
        end

      else
        flash[:danger] = 'Invalid status!'
        render "new"
      end

    else
      flash[:danger] = 'Empty status!'
      render "new"

    end
  end
end
