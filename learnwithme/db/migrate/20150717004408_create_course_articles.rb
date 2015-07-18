class CreateCourseArticles < ActiveRecord::Migration
  def change
    create_table :course_articles do |t|
      t.integer  :course_id
      t.integer  :article_id

      t.timestamps null: false
    end
  end
end
