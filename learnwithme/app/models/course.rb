class Course < ActiveRecord::Base

  belongs_to :owner,  foreign_key: "user_id", class_name: 'User'

  has_many :user_courses
  has_many :members, through: :user_courses, class_name: 'User'

  has_many :course_sheets
  has_many :sheets, through: :course_sheets , class_name: 'Sheet'

end
