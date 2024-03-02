class Course < ApplicationRecord
  belongs_to :instructor, class_name: 'User',  optional: true
  has_many :enrollments
  has_many :students, through: :enrollments, source: :user
end
