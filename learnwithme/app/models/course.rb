class Course < ActiveRecord::Base
  # belongs_to :user

  has_many :course_articles
  has_many :articles, through: :course_articles
end
