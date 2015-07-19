

require 'faker'

5.times do
  n = 1
  User.create!(
    first_name: "Joe #{n}",
    )

  Course.create!(
    title: Faker::Name.title,
    description: "this is my long description",
    location: "San Francisco",
    user_id: n,
    published: false
    )


  Sheet.create!(
    user_id: n,
    article: "this is article link",
    image: "this is image link",
    video: "this is video link",
    map: "this is map link",
    title: "this is my title#{n}!",
    description: "this is a description for #{n}",
    )

  UserCourse.create!(course_id: n, user_id: n)

  CourseSheet.create!(course_id: n, sheet_id: n)

  n+=1

end

