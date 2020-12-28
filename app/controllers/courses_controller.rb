class CoursesController < ApplicationController
  skip_before_action :require_user
  before_action :require_user, only: [:new]
  def index
    @courses = Course.all
  end
  def new
    @course = Course.new
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
      if @course.save
          flash[:notice] = "Course Created"
          redirect_to root_path
      else
          render 'new'
      end
  end

  private 
  def course_params
    params.require(:course).permit(:name, :short_name,:description)
  end
end
