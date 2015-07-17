class CourseImage < ActiveRecord::Base
  belongs_to :course
  belongs_to :image
end
