class Sheet < ActiveRecord::Base

  belongs_to :owner,  foreign_key: "user_id", class_name: 'User'

  has_many  :course_sheets
  has_many  :courses, through: :course_sheets, source: :course

  def video_tag
    self.video[/([^v=]*)$/]
  end

  def article_text
    scraper = Scraper::Client.new
    text = scraper.scrape(self.article)['content']
  end

end
