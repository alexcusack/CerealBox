class Course < ActiveRecord::Base

  belongs_to :owner,  foreign_key: "user_id", class_name: 'User'

  has_many :user_courses
  has_many :members, through: :user_courses, source: :user

  has_many :course_sheet
  has_many :sheets, through: :course_sheets , source: :sheet


end
