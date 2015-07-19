class CourseSheet < ActiveRecord::Base
  belongs_to :course
  belongs_to :sheet
end
