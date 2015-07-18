class User < ActiveRecord::Base

  has_many :user_courses
  has_many :courses, :through => :user_courses

  has_many :owned_courses, foreign_key: "owner_id", class_name: "Course"






end
