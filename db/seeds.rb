require 'date'
require 'time'
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
    name: "Sam",
    email: "sam@ea.com",
    password: "123456",
    profile_picture: "rabea.jpg",
    bio: "You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!",
    role: "visitor"
  },
  {
    name: "Benjamin",
    email: "benjamin@benyas.com",
    password: "123456",
    profile_picture: "benjamin.jpeg",
    bio: "You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!",
    role: "guide"
  },
  {
    name: "Donald Trump",
    email: "don@don.com",
    password: "merica",
    profile_picture: "don.png",
    bio: "You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!",
    role: "guide"
  },
  {
    name: "Cyrille",
    email: "cyrille@amir.com",
    password: "cyrillepass",
    profile_picture: "cyrille.png",
    bio: "A citizen of the world, I can lead any man through any journey. Currently flying paper plans in the South France. Let me take you on a culinary expedition of grass and twigs.",
    role: "guide"
  },
  {
    name: "Ephraim",
    email: "ephraim.bismuth@gmail.com",
    password: "123456",
    profile_picture: "ephraim.jpeg",
    bio: "Life is beautiful. Let it take you on its journey. Sit down, you are only a passenger. Smile, be happy.",
    role: "visitor"
  },
  {
    name: "Ruben",
    email: "rubencattan@gmail.com",
    password: "123456",
    profile_picture: "ruben.png",
    bio: "Life is beautiful. Let it take you on its journey. Sit down, you are only a passenger. Smile, be happy.",
    role: "visitor"
  },
  {
    name: "Amir",
    email: "ruskibear31@gmail.com",
    password: "123456",
    profile_picture: "Amir.png",
    bio: "I am always lost. People keep on looking for me but hardly find me. Please find me and take me back with you.",
    role: "visitor"
  }
]

## generate user seeds for all user seed info
User.create!(users_attributes)
cyrille = User.find_by(name: "Cyrille")
don = User.find_by(name: "Donald Trump")
ben = User.find_by(name: "Benjamin")


# Tour seeds

# set tour seed info
tours_attributes = [
  {
    user: don,
    start_date: Date.today,
    end_date: Date.today() + 3.days,
    name: "How to drain the Swamp",
    category: "Business"
  },
  {
    user: don,
    start_date: Date.today + 4.days,
    end_date: Date.today() + 5.days,
    name: "How to eat like a local in Tel Aviv",
    category: "Family Reunion"
  },
  {
    user: cyrille,
    start_date: Date.today,
    end_date: Date.today() + 3.days,
    name: "Eating like Cyrille in Tel Aviv",
    category: "Family Reunion"
  },
  {
    user: ben,
    start_date: Date.today,
    end_date: Date.today() + 2.days,
    name: "Birthright-Taglit",
    category: "Government"
  },
  {
    user: ben,
    start_date: Date.today + 3.days,
    end_date: Date.today() + 4.days,
    name: "Negev Hike with Le Wagon",
    category: "Nature"
  },
  {
    user: ben,
    start_date: Date.today + 5.days,
    end_date: Date.today() + 6.days,
    name: "Druze Eating in Tel Aviv",
    category: "Family Reunion"
  },
  {
    user: ben,
    start_date: Date.today + 7.days,
    end_date: Date.today() + 8.days,
    name: "Eating in Berlin",
    category: "School"
  },
    {
    user: ben,
    start_date: Date.today + 9.days,
    end_date: Date.today() + 10.days,
    name: "Eating in Ramat Gan",
    category: "Business"
  },
    {
    user: ben,
    start_date: Date.today + 15.days,
    end_date: Date.today() + 16.days,
    name: "Eating in Jerusalem",
    category: "Religious"
  },
    {
    user: ben,
    start_date: Date.today + 20.days,
    end_date: Date.today() + 21.days,
    name: "Late Nite Eats",
    category: "Pub Crawl"
  },
    {
    user: ben,
    start_date: Date.today + 30.days,
    end_date: Date.today() + 31.days,
    name: "Eating in Your Underwear",
    category: "Other"
  }
]

#generate tour seeds for all tour seed info
Tour.create!(tours_attributes)
don_swamp_drain = Tour.find_by(name: "How to drain the Swamp")
don_local_eats = Tour.find_by(name: "How to eat like a local in Tel Aviv")
cyrille_eats = Tour.find_by(name: "Eating like Cyrille in Tel Aviv")
ben_birthright = Tour.find_by(name: "Birthright-Taglit")
ben_negev_lw = Tour.find_by(name: "Negev Hike with Le Wagon")
ben_eats_tlv = Tour.find_by(name: "Druze Eating in Tel Aviv")
ben_eats_brln = Tour.find_by(name: "Eating in Berlin")
ben_eats_rmtgn = Tour.find_by(name: "Eating in Ramat Gan")
ben_eats_jrslm = Tour.find_by(name: "Eating in Jerusalem")
ben_eats_late = Tour.find_by(name: "Late Nite Eats")
ben_eats_undrwr = Tour.find_by(name: "Eating in Your Underwear")


# Group seeds

# set group seed info
groups_attributes = [
  {
    name: "Young Republicans of Tel Aviv",
    tours: [] << don_swamp_drain
  },
  {
    name: "Fat Americans in Tel Aviv",
    tours: [] << don_local_eats
  },
  {
    name: "Le Wagon Followers",
    tours: [] << cyrille_eats
  },
  {
    name: "Tulane Chabad Bus #161",
    tours: [] << ben_birthright
  },
  {
    name: "Le Wagon Batch #161",
    tours: [] << ben_negev_lw
  },
  {
    name: "Really Fat Americans in Tel Aviv",
    tours: [] << ben_eats_tlv
  },
  {
    name: "Fat Americans in Berlin",
    tours: [] << ben_eats_brln
  },
    {
    name: "Fat Americans in Ramat Gan",
    tours: [] << ben_eats_rmtgn
  },
    {
    name: "Tulane Chabad Bus #162",
    tours: [] << ben_eats_jrslm
  },
    {
    name: "Super Fat Americans in Tel Aviv",
    tours: [] << ben_eats_late
  },
  {
    name: "Le Wagon Batch #161.1",
    tours: [] << ben_eats_undrwr
  },
]

## generate group seeds for all groups seed info
Group.create!(groups_attributes)
young_repubs = Group.find_by(name: "Young Republicans of Tel Aviv")
fat_america = Group.find_by(name: "Fat Americans in Tel Aviv")
lewagon_tlv_follow = Group.find_by(name: "Le Wagon Followers")
tulane_chabad = Group.find_by(name: "Tulane Chabad Bus #161")
lewagon_tlv = Group.find_by(name: "Le Wagon Batch #161")
fat_america_tlv = Group.find_by(name: "Really Fat Americans in Tel Aviv")
fat_america_brln = Group.find_by(name: "Fat Americans in Berlin")
fat_america_rmtgn = Group.find_by(name: "Fat Americans in Ramat Gan")
tulane_chabad_2 = Group.find_by(name: "Tulane Chabad Bus #162")
fat_america_tlv_spr = Group.find_by(name: "Super Fat Americans in Tel Aviv")
lewagon_tlv_1 = Group.find_by(name: "Le Wagon Batch #161.1")







# Activity seeds


#set activity seed info

activities_attributes = [
  {
  name: "Kick Obama Out of Office",
  address: "HaCarmel St 11 Street",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Business",
  tour_id: don_swamp_drain.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 13.hours,
  order_number: "1",
  },
  {
  name: "Lock Hillary Up",
  address: "Ben Yehuda St 32",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Religious",
  tour_id: don_swamp_drain.id,
  starting_time: DateTime.now.beginning_of_day + 14.hours,
  ending_time: DateTime.now.beginning_of_day + 17.hours,
  order_number: "2",
  },
  {
  name: "Send Illiterate Tweets",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: don_swamp_drain.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours,
  order_number: "3",
  },
  {
  name: "Buy ingredients at AM:PM",
  address: "HaCarmel St 11 Street",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: don_local_eats.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 13.hours,
  order_number: "1",
  },
  {
  name: "Cooking lesson with Yoram Nitzan @Mul Yam",
  address: "Nemal Tel Aviv Street Tel Aviv Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Lecture",
  tour_id: don_local_eats.id,
  starting_time: DateTime.now.beginning_of_day + 14.hours,
  ending_time: DateTime.now.beginning_of_day + 17.hours,
  order_number: "2",
  },
  {
  name: "McDonalds",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: don_local_eats.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours,
  order_number: "3",
  },
  {
  name: "Buy ingredients at Carmel Shuk",
  address: "HaCarmel St 11 Street",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: cyrille_eats.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 13.hours,
  order_number: "1",
  },
  {
  name: "Cooking lesson by Cyrille",
  address: "Ben Yehuda St 32",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Lecture",
  tour_id: cyrille_eats.id,
  starting_time: DateTime.now.beginning_of_day + 14.hours,
  ending_time: DateTime.now.beginning_of_day + 17.hours,
  order_number: "2",
  },
  {
  name: "French picnic at Bograshov Beach",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: cyrille_eats.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours,
  order_number: "3",

  },
  # {
  # name: "Morning Prayers with Rabbi Yochanan",
  # description: "Greet Israel in true Hebrew fashion with the Shachrit led by our favorite rebbe Yochanan! All are welcome regardless of religious background. Services with be held in Hebrew and English.",
  # address: "HaAri Street 100, Safed, Israel",
  # city: "Safed",
  # meeting_point: false,
  # category: "Religious",
  # tour_id: ben_birthright.id,
  # starting_time: DateTime.now.beginning_of_day + 7.hours,
  # ending_time: DateTime.now.beginning_of_day + 8.hours,
  # order_number: "1",
  # },
  # {
  # name: "Breakfast @ Tsfat",
  # description: "Enjoy your morning ritual of authentic Israeli breakfast of bread, pastries, salads, fresh fruit/vegetables, & much more!",
  # address: "Jerusalem Street 70",
  # city: "Tsfat",
  # meeting_point: true,
  # category: "Food & Drink",
  # tour_id: ben_birthright.id,
  # starting_time: DateTime.now.beginning_of_day + 8.hours,
  # ending_time: DateTime.now.beginning_of_day + 9.hours,
  # order_number: "2",
  # },
  # {
  # name: "Morning Yoga with Emily",
  # description: "Kibbutz Yogi will lead a vigorous align-and-flow style classes to wake you up and get you going and flowing into the rest of your day!",
  # address: "Derech HaEmek 14, Migdal HaEmek",
  # city: "Migdal HaEmek",
  # meeting_point: false,
  # category: "Other",
  # tour_id: ben_birthright.id,
  # starting_time: DateTime.now.beginning_of_day + 9.hours,
  # ending_time: DateTime.now.beginning_of_day + 10.hours,
  # order_number: "3",
  # },
  {
  name: "Breakfast at Carmel Market",
  description: "Leader of the Gadot Kibbutz, Ephraim Bismuth, will speak about growing up, living on, and maintaing a kibbutz in the 21st century. Short walking tour of the Kibbutz to follow.",
  address: "HaCarmel St 11 Street, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Food & Drink",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 9.hours,
  ending_time: DateTime.now.beginning_of_day + 10.hours,
  order_number: "1",
  },
  {
  name: "Ice Breakers & Leave for Banana Beach",
  description: "Rabea and Joy will lead team ice breakers for everyone to meet one another. Then vroom vroom to our first kiff!",
  address: "Retsif Herbert Samuel Street 32, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 10.hours,
  ending_time: DateTime.now.beginning_of_day + 11.hours,
  order_number: "2",
  },
  {
  name: "Surfing the Tel Aviv waves",
  description: "Continue on the trail down to the Jilaboun pool. Turn right off the path at the bottom; you may have to cross the stream in the water in order to reach the pool. You can swim in the pool and even have a seat on the rocks behind the waterfall; beware of the deep water. You may be able to see the rainbow in the waterfall from within the pool as well.",
  address: "Kaufmann Street, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 12.hours,
  ending_time: DateTime.now.beginning_of_day + 14.hours,
  order_number: "3",
  },
  # {
  # name: "Israeli Topography by Joy",
  # description: "Driver Joy explains the history of the varied Israeli terrain. From the mountain tops of the Golan to the salty waters of the Dead Sea, Joy knows it all!",
  # address: "Bat Ami St 7, Tel Aviv-Yaf",
  # city: "Tel Aviv-Yafo",
  # meeting_point: false,
  # category: "Lecture",
  # tour_id: ben_birthright.id,
  # starting_time: DateTime.now.beginning_of_day + 14.hours,
  # ending_time: DateTime.now.beginning_of_day + 15.hours,
  # order_number: "4",
  # },
  {
  name: "See Tel Aviv from Jaffa heights",
  description: "Gaze out over Tel Aviv borders from the top of Jaffa.",
  address: "Yefet St, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 18.hours,
  order_number: "4",
  },
  {
  name: "Life as a real Tel Avivi by Yoav Rotstzein",
  description: "Yoav Rotstzein gives the detailed account of what it means to live in Tel Aviv.",
  address: "Sderot Rotschild, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Lecture",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 18.hours,
  order_number: "5",
  },
  {
  name: "Tel Aviv History",
  description: "Museum with an international collection of modern & contemporary art, plus a sculpture garden..",
  address: "Allenby St 110, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Cultural",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 18.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours,
  order_number: "6",
  },
  {
  name: "Buy a snack or souvenir at Izraeli Center",
  description: "Named after the first prime Minister of Israel, David Ben Gurion, You will learn about the life of this national hero.",
  address: "Ben Yehuda St 100, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Cultural",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 18.hours,
  order_number: "7",
  },
  {
  name: "Dinner @ Sarona Market",
  description: "Sarona Market was established to be the heartbeat of Israeli culinary art. On an area of 8,700 square meters with 91 shops, stalls and restaurants of all origins are present.",
  address: "Derech Menachem Begin 125, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 20.hours,
  ending_time: DateTime.now.beginning_of_day + 21.hours,
  order_number: "8",
  },
  # {
  # name: "Learn about the Israeli wildlife",
  # description: "A great chance to hear from the Environment and Wildlife Minister, Loren Freslaud. She will speak about the Israeli wildlife diversity and challenges. This talk will be at the campfire site with marshmellows!",
  # address: "Jerusalem Street, Tel Aviv-Yafo",
  # city: "Tel Aviv-Yafo",
  # meeting_point: false,
  # category: "Lecture",
  # tour_id: ben_birthright.id,
  # starting_time: DateTime.now.beginning_of_day + 21.hours,
  # ending_time: DateTime.now.beginning_of_day + 22.hours,
  # order_number: "10",
  # },
  {
  name: "Party @ Block",
  description: "See another side of your group mates in this famour nightclub! Have fun with the local youth. Plenty of dancing, laughing, most importantly Tubi!",
  address: "Shalma Road 157, Tel Aviv-Yafo",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Other",
  tour_id: ben_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 21.hours,
  ending_time: DateTime.now.next_day.beginning_of_day + 1.hours,
  order_number: "9",
  },
  {
  name: "Breakfast at Beer Sheva",
  description: "Eat some penut butter at the train station. What did you expect?",
  address: "Derekh Eilat 15, Beersheba",
  city: "Beersheba",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: ben_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 9.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 10.hours,
  order_number: "1",
  },
  {
  name: "Ben Gurion's House",
  description: "The kibbutz of Sde Boker is famous as the home of David Ben Gurion, Israel’s first Prime Minister whose home is now a museum open to the public, and is the feature of a number of supporting exhibits in the kibbutz. Sde Boker is located in the center of the Negev Desert in southern Israel, a community founded in 1952 by a number of pioneering families who were later joined by Ben Gurion after an interesting encounter. Today, visitors from around the world visit to learn about the life of Israel’s iconic leader.",
  address: "Kibbutz Sde Boker",
  city: "Sde Boker",
  meeting_point: false,
  category: "Food & Drink",
  tour_id: ben_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 12.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 13.hours,
  order_number: "2",
  },
  {
  name: "Ein Ovdat Hike",
  description: "Hike through the desert oasis of natural cliff formations at Ein Ovdat Preserve!",
  address: "Nahal Hava Street 11, Mitzpe Ramon",
  city: "Mitzpe Ramon",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: ben_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 12.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 16.hours,
  order_number: "3",
  },
  {
  name: "Dinner at Eilat",
  description: "Eat some hummus at the hotel. What did you expect?",
  address: "Kampen Street 8, Eilat",
  city: "Eilat",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: ben_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 18.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 19.hours,
  order_number: "4",
  },
]
#generate activity seeds for all activity seed info
Activity.create!(activities_attributes)


# set invitation seed info
invitations_attributes = [
  {
    group: tulane_chabad,
    email: "sam@ea.com",
    user: User.find_by_name("Sam")
  },
  {
    group: young_repubs,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: young_repubs,
  #   email: "barack@usa.gov"
  # },
  {
    group: fat_america,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: fat_america,
  #   email: "chrisChristie@usa.gov"
  # },
  {
    group: lewagon_tlv_follow,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: lewagon_tlv_follow,
  #   email: "david@lwtlv.il"
  # },
  # {
  #   group: lewagon_tlv_follow,
  #   email: "pinchas@lwtlv.il"
  # },
  {
    group: tulane_chabad,
    email: "ephraim.bismuth@gmail.com",
    user: User.find_by_name("Ephraim")
  },
  {
    group: tulane_chabad,
    email: "rubencattan@gmail.com",
    user: User.find_by_name("Ruben")
  },
  {
    group: tulane_chabad,
    email: "amir@gmail.com",
    user: User.find_by_name("Amir")
  },
  # {
  #   group: tulane_chabad,
  #   email: "wife@chabad.com"
  # },
  # {
  #   group: tulane_chabad,
  #   email: "child#9@chabad.com"
  # },
  {
    group: lewagon_tlv,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: lewagon_tlv,
  #   email: "sebastian@lw.fr"
  # },
  {
    group: fat_america_tlv,
    email: "ephraim.immo2017@gmail.com"
  },
  #{
  #   group: fat_america_tlv,
  #   email: "sebastian@lw.fr"
  # },
  {
    group: fat_america_brln,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: fat_america_brln,
  #   email: "sebastian@lw.fr"
  # },
  {
    group: fat_america_rmtgn,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: fat_america_rmtgn,
  #   email: "sebastian@lw.fr"
  # },
  {
    group: tulane_chabad_2,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: tulane_chabad_2,
  #   email: "sebastian@lw.fr"
  # },
  {
    group: fat_america_tlv_spr,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: fat_america_tlv_spr,
  #   email: "sebastian@lw.fr"
  # },
  {
    group: lewagon_tlv_1,
    email: "ephraim.immo2017@gmail.com"
  },
  # {
  #   group: lewagon_tlv_1,
  #   email: "sebastian@lw.fr"
  # }
]

#generate invitations seeds for all invitations seed info
Invitation.create!(invitations_attributes)

