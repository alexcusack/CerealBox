class Video < ActiveRecord::Base

  has_many :course_videos
  has_many :courses, :through => :course_videos

end

