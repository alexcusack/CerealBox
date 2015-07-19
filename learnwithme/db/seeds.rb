

require 'faker'

5.times do
  n = 1
  User.create!(
    first_name: "Joe #{n}",
    )

  Course.create!(
    title: Faker::Name.title,
    creator_id: 1,
    short_desc: 'my short desc',
    long_desc: "this is my long description",
    location: "San Francisco",
    owner_id: n
    )

    Article.create!(
    link: 'www.article.com',
    title: "my article title",
    )

  Image.create!(
    link: 'www.image.com',
    title: "my image title",
    )

  Video.create!(
    link: 'www.video.com',
    title: "my video title",
    )

  n+=1

end

CourseArticle.create!(course_id: 1, article_id: 1)
CourseArticle.create!(course_id: 2, article_id: 2)
CourseArticle.create!(course_id: 3, article_id: 3)
CourseArticle.create!(course_id: 4, article_id: 4)
CourseArticle.create!(course_id: 5, article_id: 5)

CourseVideo.create!(course_id: 1, video_id: 1)
CourseVideo.create!(course_id: 2, video_id: 2)
CourseVideo.create!(course_id: 3, video_id: 3)
CourseVideo.create!(course_id: 4, video_id: 4)
CourseVideo.create!(course_id: 5, video_id: 5)

CourseImage.create!(course_id: 1, image_id: 1)
CourseImage.create!(course_id: 2, image_id: 2)
CourseImage.create!(course_id: 3, image_id: 3)
CourseImage.create!(course_id: 4, image_id: 4)
CourseImage.create!(course_id: 5, image_id: 5)


