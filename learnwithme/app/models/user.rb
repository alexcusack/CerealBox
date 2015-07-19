class User < ActiveRecord::Base

  has_many :user_courses
  has_many :enrollments, through: :user_courses, source: :course

  has_many :owned_courses, foreign_key: "user_id", source: :course

  has_many :owned_sheets, foreign_key: "user_id", source: :sheet

end
