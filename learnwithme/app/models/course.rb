class Course < ActiveRecord::Base
   has_many :articles, through: :coursearticle
end
