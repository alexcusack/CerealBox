class AddPublishedToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :published, :boolean
    add_column :courses, :owner_id, :integer
  end
end
