class AddPledgedToUserCourses < ActiveRecord::Migration
  def change
    add_column :user_courses, :pledged, :boolean
  end
end
