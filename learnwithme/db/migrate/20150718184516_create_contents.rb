class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :link

      t.integer :course_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
