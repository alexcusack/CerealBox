class User < ActiveRecord::Base

  has_many :user_courses
  has_many :enrollments, through: :user_courses, source: :course

  has_many :owned_courses, foreign_key: "user_id", class_name: 'Course'

  has_many :owned_sheets, foreign_key: "user_id", class_name: 'Sheet'

  has_many :favorites
  has_many :favorited_sheets, through: :favorites, source: :sheet

  has_secure_password

  include Gravtastic
  gravtastic

  def check_passwords(params)
    password = params[:user][:password]
    password_confirmation = params[:user][:password_confirmation]
    return true if password == password_confirmation
  end


end
