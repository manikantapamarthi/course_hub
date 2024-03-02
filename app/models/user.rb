class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:student, :instructor, :admin, :super_admin]

  after_initialize :set_default_role, if: :new_record?

  has_many :enrollments
  has_many :courses, through: :enrollments

  private

  def set_default_role
    self.role ||= :student
  end
end
