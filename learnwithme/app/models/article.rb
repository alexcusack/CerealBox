class Article < ActiveRecord::Base
  has_many :course_article
  has_many :courses, through: :course_article
end
