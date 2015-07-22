
User.create(
  username: 'coozie',
  first_name: 'Alex',
  last_name:'Cusack',
  location: 'San Francisco',
  password: 'dbc'
)

Course.create(
  user_id: 1,
  title: 'Dinosaur Training',
  description: 'One week to learn everything about dinosaurs.',
  location: 'San Francisco'
).sheets.create(
  user_id: 1,
  title: "Dinosaurs!",
  description: "Learn about them!",
  article: "https://en.wikipedia.org/wiki/Dinosaur",
  image: "http://img1.wikia.nocookie.net/__cb20140227230627/dinosaurs/images/c/c9/Ls_shutterstock_105146921_free.jpg",
  video: "https://www.youtube.com/watch?v=pnEP-ioV3b4",
  map: "Wucheng, Sichuan, China"
)

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

Sheet.create(
  user_id: 2,
  title: "Penguins.",
  description: "These guys are the BEST.",
  article: "http://www.defenders.org/penguins/basic-facts",
  image: "http://thelapine.ca/wp-content/uploads/Penguins.jpg",
  video: "https://www.youtube.com/watch?v=k0u67Wk_hJ0",
  map: "South Pole"
)

Sheet.create(
  user_id: 3,
  title: "Tattoos!",
  description: "Learn about them!",
  article: "http://nypost.com/2015/07/21/badass-grandma-sneaks-out-of-senior-center-to-get-tattoo/",
  image: "http://truthinmedia.com/wp-content/uploads/2013/09/which-nba-players-have-the-craziest-tattoos-1008491620-may-23-2013-1-600x500.jpg",
  video: "https://www.youtube.com/watch?v=8wvKGKN_2zQ",
  map: "Los Angeles"
)

Course.first.sheets << Sheet.find(2)
Course.first.sheets << Sheet.find(3)




