class CoursePolicy < ApplicationPolicy
  def create?
    user.admin?
  end

  def new?
    create?
  end

  def edit?
    user.admin?
  end

  def update?
    edit?
  end

  def assign_instructor?
    user.admin?
  end
end