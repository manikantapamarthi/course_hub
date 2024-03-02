class StudentsController < ApplicationController

  before_action :authenticate_user!

  def index
    #TODO move code to model
    if params[:query]
      @courses = Course.where('title LIKE ?', "%#{params[:query]}%")
    else
      @courses = current_user.courses
    end
  end

  def search_courses
   
  end
end
