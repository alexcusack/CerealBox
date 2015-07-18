class Content < ActiveRecord::Base
  belongs_to :course

  validates :category, :title, :link, presence: true
end
