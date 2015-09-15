User.create!(first_name: "Tanay", last_name: "Arora", username: "Tanay Arora", email: "tarora@g.clemson.edu", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Vivek", last_name: "Poola", username: "Vivek Poola", email: "vpoola88@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Eric", last_name: "Saxman", username: "Eric Saxman", email: "eric.saxman@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Alex", last_name: "Cusack", username: "Alex Cusack", email: "cusackalex@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "David", last_name: "Grotting", username: "David Grotting", email: "dgrotting@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Josh", last_name: "Ullman", username: "Josh Ullman", email: "joshullman@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Karan", last_name: "Aditya", username: "Karan Aditya", email: "karanaditya993@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Carissa", last_name: "Blossom", username: "Carissa Blossom", email: "carissablossom@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")
User.create!(first_name: "Arielle", last_name: "Chen", username: "Arielle Chen", email: "chen.arielle@gmail.com", password_digest: "$2a$10$ZXtD7y6wnmORNkaUypkEWehaYKEWcIsAcOs0uLGTnEi0PLhhWzxN6")



Course.create!(title: "Asia", user_id: 3, description: "The Far East!", start_date: "Sat, 1 Aug 2015",end_date: "Fri, 7 Aug 2015", image: "//abroad-internships.com/uploads/Asia.jpg")
Course.create!(title: "Ocean", user_id: 1, description: "The Ocean", start_date: "Mon, 3 Aug 2015",end_date: "Sun, 9 Aug 2015", image: "//sunsetwatersportskeywest.com/blog/wp-content/uploads/2014/06/TheOcean_-_The_ocean_by_xipx.jpg")
Course.create!(title: "Ruby", user_id: 5, description: "Code of the Future", start_date: "Sun, 2 Aug 2015",end_date: "Sat, 8 Aug 2015", image: "//blog.generalassemb.ly/blog/wp-content/uploads/2014/07/clean-code.jpg")
Course.create!(title: "Olympics", user_id: 2, description: "Faster - Higher - Stronger!", start_date: "Wed, 12 Aug 2015",end_date: "Tue, 18 Aug 2015", image: "//changwlee.com/wp-content/uploads/2014/03/OlympicMoments0061-1200x790.jpg")
Course.create!(title: "San Francisco", user_id: 4, description: "Only in San Francisco", start_date: "Thu, 21 Aug 2015",end_date: "Wed, 27 Aug 2015", image: "//www.sanfrancisco.travel/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg")
Course.create!(title: "Space", user_id: 2, description: "All About Space", start_date: "Thu, 21 Aug 2015",end_date: "Wed, 27 Aug 2015", image: "//p1.pichost.me/i/58/1820925.jpg")


UserCourse.create!(user_id: 3, course_id: 6, pledged: true)
UserCourse.create!(user_id: 1, course_id: 2, pledged: true)
UserCourse.create!(user_id: 5, course_id: 3, pledged: true)
UserCourse.create!(user_id: 2, course_id: 6, pledged: true)
UserCourse.create!(user_id: 4, course_id: 5, pledged: true)
UserCourse.create!(user_id: 1, course_id: 1, pledged: true)
UserCourse.create!(user_id: 7, course_id: 2, pledged: true)
UserCourse.create!(user_id: 5, course_id: 5, pledged: true)
UserCourse.create!(user_id: 5, course_id: 2, pledged: true)

UserCourse.create!(user_id: 9, course_id: 6, pledged: true)



Sheet.create!(user_id: "8", article: "https://en.wikipedia.org/wiki/Whale", image: "//s3-eu-west-1.amazonaws.com/3tags-prod/tag/542d448574cfc/542d44857c54c/original.jpg", video: "https://www.youtube.com/watch?v=-oYIK6Bg6co", map: "Juneau, Alaska", title: "Humpack Whales", description: "Humpack Whales are awesome.")
Sheet.create!(user_id: "7", article: "//en.wikipedia.org/wiki/Octopus", image: "//i.ytimg.com/vi/rX-YiYHahoo/maxresdefault.jpg", video: "//www.youtube.com/watch?v=st8-EY71K84", map: "Monterey Bay Aquarium", title: "Octopus", description: "Octopus and cool stuff about them.")
Sheet.create!(user_id: "5", article: "//en.wikipedia.org/wiki/File:Corrientes-oceanicas.png", image: "//marinedebris.noaa.gov/sites/default/files/PacificOceanCurrents_Hawaii_NOAAMDP.png", video: "//www.youtube.com/watch?v=6vgvTeuoDWY", map: "Monterey Bay Aquarium", title: "Ocean Currents", description: "How ocean currents work.")
Sheet.create!(user_id: "9", article: "//en.wikipedia.org/wiki/Coral_reef", image: "//www.bvconservation.org/images/exploring_coral_reef_sanganeb_sudan-other.jpg", video: "//www.youtube.com/watch?v=J2BKd5e15Jc", map: "Great Barrier Reef", title: "Coral Reefs", description: "Lets learn a little bit about coral.")



Sheet.create!(user_id: "3", article: "https://en.wikipedia.org/wiki/Pillars_of_Creation", image: "//cdn4.sci-news.com/images/enlarge/image_2388_1e-Pillars-of-Creation.jpg", video: "https://www.youtube.com/watch?v=hZ7zGUFDOsg", map: "Kennedy Space Center", title: "Pillars of Creation", description: "The Pillars of Creation")
Sheet.create!(user_id: "4", article: "https://en.wikipedia.org/wiki/Black_hole", image: "https://www.nasa.gov/sites/default/files/cygx1_ill.jpg", video: "https://www.youtube.com/watch?v=3pAnRKD4raY", map: "Kennedy Space Center", title: "Understanding Black Holes", description: "How do they work?")
Sheet.create!(user_id: "5", article: "https://en.wikipedia.org/wiki/Extraterrestrial_life", image: "//i.ytimg.com/vi/_VYDIZLjtkY/maxresdefault.jpg", video: "https://www.youtube.com/watch?v=_VYDIZLjtkY", map: "Kennedy Space Center", title: "Are Aliens Real?", description: "I'm pretty sure I am one.")
Sheet.create!(user_id: "9", article: "//www.independent.co.uk/news/science/nasa-announcement-live-second-earth-new-planet-kepler-space-telescope-10410960.html", image: "//extras.mnginteractive.com/live/media/site21/2014/0417/20140417__18dcakepw~1_500.jpg", video: "https://www.youtube.com/watch?v=_VYDIZLjtkY", map: "Kennedy Space Center", title: "How Weird?", description: "What if other people could live there?.")


CourseSheet.create!(course_id: 2, sheet_id: 1)
CourseSheet.create!(course_id: 2, sheet_id: 2)
CourseSheet.create!(course_id: 2, sheet_id: 3)
CourseSheet.create!(course_id: 2, sheet_id: 4)

CourseSheet.create!(course_id: 6, sheet_id: 5)
CourseSheet.create!(course_id: 6, sheet_id: 6)

CourseSheet.create!(course_id: 1, sheet_id: 1)
CourseSheet.create!(course_id: 3, sheet_id: 2)
CourseSheet.create!(course_id: 3, sheet_id: 2)
CourseSheet.create!(course_id: 4, sheet_id: 6)
CourseSheet.create!(course_id: 4, sheet_id: 2)
CourseSheet.create!(course_id: 4, sheet_id: 3)
CourseSheet.create!(course_id: 5, sheet_id: 5)
CourseSheet.create!(course_id: 5, sheet_id: 8)

CourseSheet.create!(course_id: 6, sheet_id: 8)




