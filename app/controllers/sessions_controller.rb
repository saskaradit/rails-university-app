class SessionsController < ApplicationController
  skip_before_action :require_user, only: [:new , :create]

  def new
  end

  def create
    student = Student.find_by(email:params[:sessions][:email.downcase])
    if student && student.authenticate(params[:sessions][:password])
      session[:student_id] = student.id
      flash[:notice] = "You are logged in"
      redirect_to student
    else
      flash.now[:notice] = "Invalid credentials"
      render 'new'
    end
  end

  def destroy
    session[student_id] = nil
    flash[:notice] = "you are logged out"
    redirect_to root_path
  end
end
