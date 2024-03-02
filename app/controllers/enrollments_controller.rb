class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def create_enrollment
    @course = Course.find(params[:course_id])
    current_user.enrollments.create(course: @course)
    redirect_to students_path, notice: 'Enrolled successfully.'
  end

  def destroy
    @enrollment = current_user.enrollments.find_by(course_id: params[:course_id])
    @enrollment.destroy
    redirect_to courses_url, notice: 'Unenrolled successfully.'
  end
end
