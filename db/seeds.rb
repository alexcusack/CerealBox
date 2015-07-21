

User.create(
  username: 'coozie',
  first_name: 'Alex',
  last_name:'Cusack',
  location: 'San Francisco',
  password: 'dbc'
)

# Course.create(
#   user_id: 1,
#   title: 'Dinosaur Training',
#   description: 'One week to learn everything about dinosaurs.',
#   location: 'San Francisco'
# )

# Sheet.create(
#   user_id: 1,
#   title: "Dinosaurs!",
#   description: "Learn about them!",
#   article: "https://en.wikipedia.org/wiki/Dinosaur",
#   image: "http://img1.wikia.nocookie.net/__cb20140227230627/dinosaurs/images/c/c9/Ls_shutterstock_105146921_free.jpg",
#   video: "https://www.youtube.com/watch?v=pnEP-ioV3b4",
#   map: "Wucheng, Sichuan, China"
# )

User.create(
  username: 'kingvivek',
  first_name: 'Vivek',
  last_name:'Poola',
  location: 'San Francisco',
  password: 'dbc'
).enrollments << Course.find(1)

User.create(
  username: 'sax',
  first_name: 'Eric',
  last_name:'Saxman',
  location: 'San Francisco',
  password: 'dbc'
).enrollments << Course.find(1)

User.create(
  username: 'tastey',
  first_name: 'Tanay',
  last_name:'Arora',
  location: 'San Francisco',
  password: 'dbc'
).enrollments << Course.find(1)
