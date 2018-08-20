# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# User seeds
## clear old users
User.destroy_all

## set user seed info
users_attributes = [
  {
    name: "Cyrille",
    email: "cyrille@amir.com",
    password: "cyrillepass",
    profile_picture: "cyrille.png",
    bio: "A citizen of the world, I can lead any man through any journey. Currently flying paper plans in the South France. Let me take you on a culinary expedition of grass and twigs."
  },
  {
    name: "Bryan",
    email: "bryan@amir.com",
    password: "bryanpass",
    profile_picture: "bryan.png",
    bio: "American. I know all the best dance halls. Currently living as a black Jew in Germany. Safe."
  },
  {
    name: "Kevin",
    email: "kevin@amir.com",
    password: "kevinpass",
    profile_picture: "kevin.png",
    bio: "Do I really need to tell you anything? My name is Kevin and I am the greatest! Ask David or Loren."
  }
]

## generate user seeds for all user seed info
User.create!(users_attributes)
cyrille = User.find_by(name: "Cyrille")
bryan = User.find_by(name: "Bryan")
kevin = User.find_by(name: "Kevin")


# Tour seeds
## Clear old tours
Tour.destroy_all

# set tour seed info
tours_attributes = [
  {
    user: cyrille,
    start_time: DateTime.new(2018, 8, 21.25),
    end_time: DateTime.new(2018, 8, 24, 22, 0, 0),
    name: "How to eat like a rabbit in Tel Aviv",
    group_id: Group.ids.sample
  },
  {
    user: bryan,
    start_time: DateTime.new(2018, 9, 15, 10, 30, 0),
    end_time: DateTime.new(2018, 9, 16, 5, 0, 0),
    name: "Swing dancing in the Sea",
    group_id: Group.ids.sample
  },
  {
    user: kevin,
    start_time: DateTime.new(2018, 10, 5, 11, 0, 0),
    end_time: DateTime.new(2018, 10, 15, 23, 0, 0),
    name: "Be the coolest kid in school",
    group_id: Group.ids.sample
  }
]

#generate tour seeds for all tour seed info
Tour.create!(tours_attributes)



# Group seeds
## Clear old groups
Group.destroy_all

# set group seed info
groups_attributes = [
  {
    name: "Le Wagon: Tel Aviv"
  },
  {
    name: "Big Backpacks of America"
  },
  {
    name: "Tunisian Thiefs"
  },
  {
    name: "Ephraims of the World"
  },
  {
    name: "Geeks from Martinique"
  }
]

## generate group seeds for all groups seed info
Group.create!(groups_attributes)



# Activity seeds
## Clear old activities
Activity.destroy_all

#set activity seed info
activities_attributes = [
  {
  name: "Buy ingredients at Carmel Shuk",
  address: "HaCarmel St 11 Street",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: 1
  },
  {
  name: "Cooking lesson with French Star Chef",
  address: "Ben Yehuda St 32",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: false,
  category: "Lecture",
  tour_id: 1
  },
  {
  name: "French picnic at Bograshov Beach",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: 1
  },
  {
  name: "Technical Singing Skills by Netta",
  address: "Yerushalaim Ave 46",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: 2
  },
  {
  name: "Burekas and Balkan Beat Box",
  address: "Levinsky 46",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: 2
  },
  {
  name: "Gagarin Club Swing Dance",
  address: "Salame 46",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Cultural",
  tour_id: 2
  },
  {
  name: "Being a French Man named Kevin",
  address: "Retsif Herbert Samuel St 112",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Lecture",
  tour_id: 3
  },
  {
  name: "French Lunch @Hotel Montefiore",
  address: "36 Montefiore",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: 3
  },
    {
  name: "'My life is a joke by Kevin' @Camel Comedy Club",
  address: "Allenby St 128",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Religious",
  tour_id: 3
  }
]
#generate activity seeds for all activity seed info
Activity.create!(activities_attributes)
