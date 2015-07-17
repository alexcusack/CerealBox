class CourseArticle < ActiveRecord::Base
  belongs_to :course
  belongs_to :article
end
