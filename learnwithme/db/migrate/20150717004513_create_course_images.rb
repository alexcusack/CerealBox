class CreateCourseImages < ActiveRecord::Migration
  def change
    create_table   :course_images do |t|
      t.references :course, index: true, foreign_key: true
      t.references :image, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
