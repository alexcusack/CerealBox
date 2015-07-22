class RemoveLocationFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :location, :string
  end
end
