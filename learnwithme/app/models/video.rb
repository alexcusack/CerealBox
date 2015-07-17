class Video < ActiveRecord::Base

  has_many :course_videos
  has_many :videos, :through => :course_videos

end
