class Admin::CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :assign_instructor]

  def index
    @courses = Course.all
  end

  def show
    @instructors = User.instructor
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    
    if @course.save
      redirect_to admin_courses_path, notice: 'Course was successfully created.'
    else
      render :new, notice: @course.errors.full_messages
    end
  end

  def edit
  end


  def update
    if @course.update(course_params)
      redirect_to admin_course_path(@course), notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def assign_instructor
    @course.update(instructor_id: params[:id])
    redirect_to admin_courses_path, notice: 'Instructor assigned successfully.'
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description)
  end

end
