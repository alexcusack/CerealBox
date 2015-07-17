class Video < ActiveRecord::Base
  belongs_to :course_video
  belongs_to :course, through: :course_video
end
