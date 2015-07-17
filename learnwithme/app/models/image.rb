class Image < ActiveRecord::Base
   has_many :course_images
   has_many :courses, :through => :course_images
end
