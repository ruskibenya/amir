# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
## Clear old activities
Activity.destroy_all
## Clear old tours_attributes
Tour.destroy_all
## Clear old groups
Group.destroy_all
## clear old users
User.destroy_all
## clear old invitations
Invitation.destroy_all


# User seeds

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

# set tour seed info
tours_attributes = [
  {
    user: cyrille,
    start_date: Date.new(2018, 8, 21),
    end_date: Date.new(2018, 8, 24),
    name: "How to eat like a rabbit in Tel Aviv"
  },
  {
    user: bryan,
    start_date: Date.new(2018, 9, 15),
    end_date: Date.new(2018, 9, 16),
    name: "Swing dancing in the Sea"
  },
  {
    user: kevin,
    start_date: Date.new(2018, 10, 5),
    end_date: Date.new(2018, 10, 15),
    name: "Be the coolest kid in school"
  }
]

#generate tour seeds for all tour seed info
Tour.create!(tours_attributes)


# Group seeds

# set group seed info
groups_attributes = [
  {
    name: "Tunisian Thiefs",
    tours: [] << Tour.find_by(name: "How to eat like a rabbit in Tel Aviv")
  },
  {
    name: "Ephraims of the World",
    tours: [] << Tour.find_by(name: "Swing dancing in the Sea")
  },
  {
    name: "Freaks from Martinique",
    tours: [] << Tour.find_by(name: "Be the coolest kid in school")
  }
]

## generate group seeds for all groups seed info
Group.create!(groups_attributes)



# Activity seeds


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
  tour_id: Tour.find_by(name: "How to eat like a rabbit in Tel Aviv")
  },
  {
  name: "Cooking lesson with French Star Chef",
  address: "Ben Yehuda St 32",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: false,
  category: "Lecture",
  tour_id: Tour.find_by(name: "How to eat like a rabbit in Tel Aviv")
  },
  {
  name: "French picnic at Bograshov Beach",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: Tour.find_by(name: "How to eat like a rabbit in Tel Aviv")
  },
  {
  name: "Technical Singing Skills by Netta",
  address: "Yerushalaim Ave 46",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: Tour.find_by(name: "Swing dancing in the Sea")
  },
  {
  name: "Burekas and Balkan Beat Box",
  address: "Levinsky 46",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: Tour.find_by(name: "Swing dancing in the Sea")
  },
  {
  name: "Gagarin Club Swing Dance",
  address: "Salame 46",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Cultural",
  tour_id: Tour.find_by(name: "Swing dancing in the Sea")
  },
  {
  name: "Being a French Man named Kevin",
  address: "Retsif Herbert Samuel St 112",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Lecture",
  tour_id: Tour.find_by(name: "Be the coolest kid in school")
  },
  {
  name: "French Lunch @Hotel Montefiore",
  address: "36 Montefiore",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: Tour.find_by(name: "Be the coolest kid in school")
  },
    {
  name: "'My life is a joke by Kevin' @Camel Comedy Club",
  address: "Allenby St 128",
  city: "Tel Aviv-Yafo",
  longitude: "#",
  latitude: "#",
  meeting_point: true,
  category: "Religious",
  tour_id: Tour.find_by(name: "Be the coolest kid in school")
  }
]
#generate activity seeds for all activity seed info
Activity.create!(activities_attributes)


# set invitation seed info
invitations_attributes = [
  {
    group: Group.find_by(name: "Tunisian Thiefs"),
    email: "joy@lwtlv.il"
  },
  {
    group: Group.find_by(name: "Ephraims of the World"),
    email: "roman@lwtlv.il"
  },
  {
    group: Group.find_by(name: "Tunisian Thiefs"),
    email: "yohav@lwtlv.il"
  },
  {
    group: Group.find_by(name: "Ephraims of the World"),
    email: "yohav@lwtlv.il"
  },
  {
    group: Group.find_by(name: "Freaks from Martinique"),
    email: "arbi@lwtlv.il"
  },
  {
    group: Group.find_by(name: "Freaks from Martinique"),
    email: "roxane@lwtlv.il"
  }
]

#generate invitations seeds for all invitations seed info
Invitation.create!(invitations_attributes)

