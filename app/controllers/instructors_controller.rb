class InstructorsController < ApplicationController
  before_action :authenticate_user!
  def welcome
    @courses = current_user.courses
  end
end
