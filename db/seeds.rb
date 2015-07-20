

  User.create(
    username: 'coozie',
    first_name: 'Alex',
    last_name:'Cusack',
    location: 'San Francisco'
  )

  Course.create(
    user_id: 1,
    title: 'Dinosaur Training',
    description: 'One week to learn everything about dinosaurs.',
    location: 'San Francisco',
  )

  Sheet.create(
    user_id: 1,
    title: "Dinosaurs!",
    description: "Learn about them!",
    article: "https://en.wikipedia.org/wiki/Dinosaur",
    image: "http://img1.wikia.nocookie.net/__cb20140227230627/dinosaurs/images/c/c9/Ls_shutterstock_105146921_free.jpg",
    video: "https://www.youtube.com/watch?v=pnEP-ioV3b4",
    map: "Wucheng, Sichuan, China"
  )



#   UserCourse.create!(course_id: n, user_id: n)

#   CourseSheet.create!(course_id: n, sheet_id: n)

#   n+=1

# end

