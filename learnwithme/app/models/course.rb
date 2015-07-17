class Course < ActiveRecord::Base

  # belongs_to :user

  has_many :course_articles
  has_many :articles, :through => :course_articles

  has_many :course_images
  has_many :images, :through => :course_images

  has_many :course_videos
  has_many :videos, :through => :course_videos

end
