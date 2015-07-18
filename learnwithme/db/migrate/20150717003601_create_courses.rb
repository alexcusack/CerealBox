class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string   :title
      t.integer  :creator_id
      t.text     :short_desc
      t.text     :long_desc
      t.text     :location

      t.timestamps null: false
    end
  end
end
