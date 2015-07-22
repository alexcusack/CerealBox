class Course < ActiveRecord::Base

  belongs_to :owner,  foreign_key: "user_id", class_name: 'User'

  has_many :user_courses
  has_many :members, through: :user_courses, source: :user

  has_many :course_sheets
  has_many :sheets, through: :course_sheets, source: :sheet

  validates :title, :description, :user_id, presence: true
  after_initialize :default_values

  before_save :add_end_date if :start_date

  def add_end_date
    course.end_date = course.start_date + 7.days
  end

  def default_values
    self.published ||= false
  end

end
