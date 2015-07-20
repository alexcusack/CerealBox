class AddFuidGuidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_uid, :string
    add_column :users, :google_uid, :string
  end
end
