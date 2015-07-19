class CreateCourseSheets < ActiveRecord::Migration
  def change
    create_table :course_sheets do |t|
      t.integer :course_id
      t.integer :sheet_id

      t.timestamps null: false
    end
  end
end



