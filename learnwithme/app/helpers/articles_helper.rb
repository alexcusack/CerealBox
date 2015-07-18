module ArticlesHelper
  def self.render_content(content, course)
    if content.save
      return 'content/_content',
        locals: { content: content, course: course },
        layout: false
    else

    end
  end
end
