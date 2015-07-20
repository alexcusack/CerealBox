class Sheet < ActiveRecord::Base

  belongs_to :owner,  foreign_key: "user_id", class_name: 'User'

  has_many  :course_sheets
  has_many  :courses, through: :course_sheets, source: :course

  def video_tag
    self.video[/([^v=]*)$/]
  end

  def article_text
    page = "http://www.huffingtonpost.com/2010/07/24/fighter-jet-explodes-pilo_n_658381.html"
    Scraper::Client.scrape(page)
  end

end
