class CreateCourseArticles < ActiveRecord::Migration
  def change
    create_table :course_articles do |t|
      t.references :course, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
