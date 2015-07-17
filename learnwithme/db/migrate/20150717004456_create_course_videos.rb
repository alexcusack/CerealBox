class CreateCourseVideos < ActiveRecord::Migration
  def change
    create_table :course_videos do |t|
      t.references :course, index: true, foreign_key: true
      t.references :video, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
