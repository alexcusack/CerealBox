class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string   :title
      t.integer  :user_id
      t.text     :description
      t.text     :location

      t.timestamps null: false
    end
  end
end
