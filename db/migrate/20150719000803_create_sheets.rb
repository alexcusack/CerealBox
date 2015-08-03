class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.integer :user_id
      t.string :article
      t.string :image
      t.string :video
      t.string :map
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
