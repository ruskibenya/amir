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
    name: "Rabea",
    email: "rab@ea.com",
    password: "123456",
    profile_picture: "rabea.jpg",
    bio: "You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!"
  },
  {
    name: "Donny",
    email: "don@don.com",
    password: "merica",
    profile_picture: "don.png",
    bio: "You must go forth into the world, with passion, courage in your conviction, and most importantly be true to yourself. I did it!"
  },
  {
    name: "Cyrille",
    email: "cyrille@amir.com",
    password: "cyrillepass",
    profile_picture: "cyrille.png",
    bio: "A citizen of the world, I can lead any man through any journey. Currently flying paper plans in the South France. Let me take you on a culinary expedition of grass and twigs."
  }
]

## generate user seeds for all user seed info
User.create!(users_attributes)
cyrille = User.find_by(name: "Cyrille")
don = User.find_by(name: "Donald Trump")
rabea = User.find_by(name: "Rabea Bader")


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
    user: rabea,
    start_date: Date.today,
    end_date: Date.today() + 2.days,
    name: "Birthright-Taglit",
    category: "Government"
  },
  {
    user: rabea,
    start_date: Date.today + 3.days,
    end_date: Date.today() + 4.days,
    name: "Negev Hike with Le Wagon",
    category: "Nature"
  },
  {
    user: rabea,
    start_date: Date.today + 5.days,
    end_date: Date.today() + 6.days,
    name: "Druze Eating in Tel Aviv",
    category: "Family Reunion"
  },
  {
    user: rabea,
    start_date: Date.today + 7.days,
    end_date: Date.today() + 8.days,
    name: "Eating in Berlin",
    category: "School"
  },
    {
    user: rabea,
    start_date: Date.today + 9.days,
    end_date: Date.today() + 10.days,
    name: "Eating in Ramat Gan",
    category: "Business"
  },
    {
    user: rabea,
    start_date: Date.today + 15.days,
    end_date: Date.today() + 16.days,
    name: "Eating in Jerusalem",
    category: "Religious"
  },
    {
    user: rabea,
    start_date: Date.today + 20.days,
    end_date: Date.today() + 21.days,
    name: "Late Nite Eats",
    category: "Pub Crawl"
  },
    {
    user: rabea,
    start_date: Date.today + 30.days,
    end_date: Date.today() + 31.days,
    name: "Eating in Your Underwear",
    category: "Other"
  },
]

#generate tour seeds for all tour seed info
Tour.create!(tours_attributes)
don_swamp_drain = Tour.find_by(name: "How to drain the Swamp")
don_local_eats = Tour.find_by(name: "How to eat like a local in Tel Aviv")
cyrille_eats = Tour.find_by(name: "Eating like Cyrille in Tel Aviv")
rabea_birthright = Tour.find_by(name: "Birthright-Taglit")
rabea_negev_lw = Tour.find_by(name: "Negev Hike with Le Wagon")
rabea_eats_tlv = Tour.find_by(name: "Druze Eating in Tel Aviv")
rabea_eats_brln = Tour.find_by(name: "Eating in Berlin")
rabea_eats_rmtgn = Tour.find_by(name: "Eating in Ramat Gan")
rabea_eats_jrslm = Tour.find_by(name: "Eating in Jerusalem")
rabea_eats_late = Tour.find_by(name: "Late Nite Eats")
rabea_eats_undrwr = Tour.find_by(name: "Eating in Your Underwear")


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
    tours: [] << rabea_birthright
  },
  {
    name: "Le Wagon Batch #161",
    tours: [] << rabea_negev_lw
  },
  {
    name: "Really Fat Americans in Tel Aviv",
    tours: [] << rabea_eats_tlv
  },
  {
    name: "Fat Americans in Berlin",
    tours: [] << rabea_eats_brln
  },
    {
    name: "Fat Americans in Ramat Gan",
    tours: [] << rabea_eats_rmtgn
  },
    {
    name: "Tulane Chabad Bus #162",
    tours: [] << rabea_eats_jrslm
  },
    {
    name: "Super Fat Americans in Tel Aviv",
    tours: [] << rabea_eats_late
  },
  {
    name: "Le Wagon Batch #161.1",
    tours: [] << rabea_eats_undrwr
  },
]

## generate group seeds for all groups seed info
Group.create!(groups_attributes)
young_repubs = Group.find_by(name: "Young Republicans of Tel Aviv")
fat_america = Group.find_by(name: "Fat Americans in Tel Aviv")
lewagon_tlv = Group.find_by(name: "Le Wagon Followers")
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
  ending_time: DateTime.now.beginning_of_day + 13.hours
  },
  {
  name: "Lock Hillary Up",
  address: "Ben Yehuda St 32",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Religious",
  tour_id: don_swamp_drain.id,
  starting_time: DateTime.now.beginning_of_day + 14.hours,
  ending_time: DateTime.now.beginning_of_day + 17.hours
  },
  {
  name: "Send Illiterate Tweets",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: don_swamp_drain.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours
  },
  {
  name: "Buy ingredients at AM:PM",
  address: "HaCarmel St 11 Street",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: don_local_eats.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 13.hours
  },
  {
  name: "Cooking lesson with Yoram Nitzan @Mul Yam",
  address: "Hangar 24",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Lecture",
  tour_id: don_local_eats.id,
  starting_time: DateTime.now.beginning_of_day + 14.hours,
  ending_time: DateTime.now.beginning_of_day + 17.hours
  },
  {
  name: "McDonalds",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: don_local_eats.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours
  },
  {
  name: "Buy ingredients at Carmel Shuk",
  address: "HaCarmel St 11 Street",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: cyrille_eats.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 13.hours
  },
  {
  name: "Cooking lesson by Cyrille",
  address: "Ben Yehuda St 32",
  city: "Tel Aviv-Yafo",
  meeting_point: false,
  category: "Lecture",
  tour_id: cyrille_eats.id,
  starting_time: DateTime.now.beginning_of_day + 14.hours,
  ending_time: DateTime.now.beginning_of_day + 17.hours
  },
  {
  name: "French picnic at Bograshov Beach",
  address: "Retsif Herbert Samuel St",
  city: "Tel Aviv-Yafo",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: cyrille_eats.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours
  },
  {
  name: "Morning Prayers with Rabbi Yochanan",
  description: "Greet Israel in true Hebrew fashion with the Shachrit led by our favorite rebbe Yochanan! All are welcome regardless of religious background. Services with be held in Hebrew and English.",
  address: "Hazor Museum",
  city: "Ayelet HaShahar",
  meeting_point: false,
  category: "Religious",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 7.hours,
  ending_time: DateTime.now.beginning_of_day + 7.5.hours
  },
  {
  name: "Breakfast @ Dining Hall",
  description: "Enjoy your morning ritual of authentic Israeli breakfast of bread, pastries, salads, fresh fruit/vegetables, & much more!",
  address: "Mahanayim Shopping Center",
  city: "Rosh Pina",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 8.hours,
  ending_time: DateTime.now.beginning_of_day + 8.5.hours
  },
  {
  name: "Morning Yoga with Emily",
  description: "Kibbutz Yogi will lead a vigorous align-and-flow style classes to wake you up and get you going and flowing into the rest of your day!",
  address: "Beit HaRishonim",
  city: "Rosh Pinna",
  meeting_point: false,
  category: "Other",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 9.hours,
  ending_time: DateTime.now.beginning_of_day + 10.hours
  },
  {
  name: "Meet the neighbors! Learn about life on a kibbutz from Ephraim Bismuth",
  description: "Leader of the Gadot Kibbutz, Ephraim Bismuth, will speak about growing up, living on, and maintaing a kibbutz in the 21st century. Short walking tour of the Kibbutz to follow.",
  address: "Kibbutz Gadot",
  city: "Gadot",
  meeting_point: false,
  category: "Lecture",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 9.hours,
  ending_time: DateTime.now.beginning_of_day + 9.75.hours
  },
  {
  name: "Ice Breakers & Leave for Jalaboun",
  description: "Drivers Rabea and Joy will lead team ice breakers for everyone to meet one another. Then vroom vroom to our first trek!",
  address: "Jalaboun Stream",
  city: "Gadot",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 10.5.hours,
  ending_time: DateTime.now.beginning_of_day + 11.hours
  },
  {
  name: "Hiking Jalaboun Red Trail (Longer Option)",
  description: "This longer trail continues from the Jilaboun pool towards the El Jalabina ruins and the officers’ pool, finally ending near the Pkak Bridge.",
  address: "Jordan River Rafting Attractions",
  city: "Golan Heights",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 16.hours
  },
  {
  name: "Hiking Jalaboun Blue Trail (Shorter Option)",
  description: "Chase waterfalls & take in the breathtaking scenery while hiking the Jilaboon, a bubbling stream in the Golan with great significance.",
  address: "Jordan River Rafting Attractions",
  city: "Gadot",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 11.hours,
  ending_time: DateTime.now.beginning_of_day + 16.hours
  },
  {
  name: "Swimming Jalaboun Waterfalls & Natural Pool",
  description: "Continue on the trail down to the Jilaboun pool. Turn right off the path at the bottom; you may have to cross the stream in the water in order to reach the pool. You can swim in the pool and even have a seat on the rocks behind the waterfall; beware of the deep water. You may be able to see the rainbow in the waterfall from within the pool as well.",
  address: "Metsad Ateret",
  city: "Golan Heights",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 12.5.hours,
  ending_time: DateTime.now.beginning_of_day + 14.5.hours
  },
  {
  name: "Israeli Topography by Joy",
  description: "Driver Joy explains the history of the varied Israeli terrain. From the mountain tops of the Golan to the salty waters of the Dead Sea, Joy knows it all!",
  address: "Gesher Benot Ya'akov",
  city: "Golan Heights",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 14.25.hours,
  ending_time: DateTime.now.beginning_of_day + 14.75.hours
  },
  {
  name: "BBQ Lunch and Games",
  description: "Relax as Chef David fires up the grill and cooks a kosher feast. The menu includes kebabs, sausages, chicken hearts, and of course Israeli Salad+Hummus!! In the mean time play soccer, football, cards, horseshoes, or just learn more about your new friends! After lunch it's straight to Mount Bental for more picturesque views!",
  address: "Hukok St 12, Qatsrin",
  city: "Qatsrin",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 15.hours,
  ending_time: DateTime.now.beginning_of_day + 16.5.hours
  },
  {
  name: "Mount Bental Vista Views",
  description: "Gaze out over the borders of neighboring countries from an old IDF bunker on top of Mount Bental in the Golan Heights.",
  address: "Merom Golan Hotel",
  city: "Merom Golan",
  meeting_point: false,
  category: "Travel & Outdoor",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 18.5.hours
  },
  {
  name: "Yom Kippur War by Ariel Sharon",
  description: "Listen to the story of the Yom Kippur War in 1973 from it's biggest hero, Ariel Sharon. Ariel gives a rivetting first-person account of one of the largest tank battles ever that was miraculously won by the Israelis with their small force of 160 tanks.",
  address: "Golan Volcanic Park",
  city: "Golan Heights",
  meeting_point: false,
  category: "Lecture",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.25.hours,
  ending_time: DateTime.now.beginning_of_day + 17.75.hours
  },
  {
  name: "Life as a UN Observer by António Guterres",
  description: "António Guterres gives the detailed account of what it means to be a peace-keeping soldier.",
  address: "La pizzal'e Merom Golan",
  city: "Merom Golan",
  meeting_point: false,
  category: "Lecture",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.75.hours,
  ending_time: DateTime.now.beginning_of_day + 18.hours
  },
  {
  name: "Israeli doctors saving Syrians by Dr. Tal Solomon",
  description: "Since 2013, Israel has been transporting severly injured Syrians to Israeli hospitals to give them free medical care. Hear how the Syrian Civil War is affecting Dr. Tal Solomon's vascular surgery unit, located an hour from the border.",
  address: "Ein Zivan",
  city: "Ein Zivan",
  meeting_point: false,
  category: "Lecture",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 18.25.hours,
  ending_time: DateTime.now.beginning_of_day + 18.5.hours
  },
  {
  name: "Buy a snack or souvenir at Coffee Annan ",
  description: "Named after the former secretary general of the UN, whose name sounds in Hebrew like coffee in the cloud.From Mount Bental you almost can see Damascus.",
  address: "Kibuttz Gonen",
  city: "Gonen",
  meeting_point: false,
  category: "Food & Drink",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 17.hours,
  ending_time: DateTime.now.beginning_of_day + 18.5.hours
  },
  {
  name: "Reflection: War, Civil War, Survival",
  description: "Let's recap everything we've seen and heard about Israel's Yom Kippur War, Syria's Civil War, and what war really looks and feels like. Then back on the bus and home to Gadot!",
  address: "Lehavot HaBashan",
  city: "Lehavot HaBashan",
  meeting_point: true,
  category: "Other",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 18.5.hours,
  ending_time: DateTime.now.beginning_of_day + 19.hours
  },
  {
  name: "Dinner @ Dining Hall",
  description: "Enjoy a tasty, buffet-style dinner at the Kibbutz & get to know the other amazing people you’ll be traveling with on this unbelievable adventure.",
  address: "Kibuttz Shamir",
  city: "Shamir",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 20.hours,
  ending_time: DateTime.now.beginning_of_day + 21.hours
  },
  {
  name: "Learn about life on a kibbutz from Ephraim Bismuth",
  description: "Another chance to hear from leader of the Gadot Kibbutz, Ephraim Bismuth, will speak about growing up, living on, and maintaing a kibbutz in the 21st century. This talk will be at the campfire site with marshmellows!",
  address: "Zavitan St 2, Qatsrin",
  city: "Qatsrin",
  meeting_point: false,
  category: "Lecture",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 21.hours,
  ending_time: DateTime.now.beginning_of_day + 21.5.hours
  },
  {
  name: "Party @ Kibbutz Amir",
  description: "See another side of your group mates at the kibbutz bar! Have fun with the local youth. Plenty of dancing, laughing, most importantly Tubi!",
  address: "Zavitan St 2, Qatsrin",
  city: "Qatsrin",
  meeting_point: false,
  category: "Lecture",
  tour_id: rabea_birthright.id,
  starting_time: DateTime.now.beginning_of_day + 21.hours,
  ending_time: DateTime.now.next_day.beginning_of_day + 1.hours
  },
  {
  name: "Breakfast at Beer Sheva",
  description: "Eat some penut butter at the train station. What did you expect?",
  address: "Derekh Eilat 15, Beersheba",
  city: "Beersheba",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: rabea_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 9.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 10.hours
  },
  {
  name: "Ben Gurion's House",
  description: "The kibbutz of Sde Boker is famous as the home of David Ben Gurion, Israel’s first Prime Minister whose home is now a museum open to the public, and is the feature of a number of supporting exhibits in the kibbutz. Sde Boker is located in the center of the Negev Desert in southern Israel, a community founded in 1952 by a number of pioneering families who were later joined by Ben Gurion after an interesting encounter. Today, visitors from around the world visit to learn about the life of Israel’s iconic leader.",
  address: "Kibbutz Sde Boker",
  city: "Sde Boker",
  meeting_point: false,
  category: "Food & Drink",
  tour_id: rabea_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 12.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 13.hours
  },
  {
  name: "Ein Ovdat Hike",
  description: "Hike through the desert oasis of natural cliff formations at Ein Ovdat Preserve!",
  address: "Carmey Avdat Farm ",
  city: "Midreshet Ben-Gurion",
  meeting_point: true,
  category: "Travel & Outdoor",
  tour_id: rabea_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 12.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 16.hours
  },
  {
  name: "Dinner at Bee Sheva",
  description: "Eat some hummus at the office. What did you expect?",
  address: "Derekh Eilat 15, Beersheba",
  city: "Beersheba",
  meeting_point: true,
  category: "Food & Drink",
  tour_id: rabea_negev_lw.id,
  starting_time: DateTime.now.beginning_of_day + 3.days + 18.hours,
  ending_time: DateTime.now.beginning_of_day + 3.days + 19.hours
  },
]
#generate activity seeds for all activity seed info
Activity.create!(activities_attributes)


# set invitation seed info
invitations_attributes = [
  {
    group: young_repubs,
    email: "hillary@usa.gov"
  },
  {
    group: young_repubs,
    email: "barack@usa.gov"
  },
  {
    group: fat_america,
    email: "bib@israel.gov"
  },
  {
    group: fat_america,
    email: "chrisChristie@usa.gov"
  },
  {
    group: lewagon_tlv,
    email: "rabea@lwtlv.il"
  },
  {
    group: lewagon_tlv,
    email: "david@lwtlv.il"
  },
  {
    group: lewagon_tlv,
    email: "pinchas@lwtlv.il"
  },
    {
    group: tulane_chabad,
    email: "rabbi@chabad.com"
  },
  {
    group: tulane_chabad,
    email: "wife@chabad.com"
  },
  {
    group: tulane_chabad,
    email: "child#9@chabad.com"
  },
  {
    group: lewagon_tlv,
    email: "boris@lw.fr"
  },
    {
    group: lewagon_tlv,
    email: "sebastian@lw.fr"
  },
  {
    group: fat_america_tlv,
    email: "boris@lw.fr"
  },
    {
    group: fat_america_tlv,
    email: "sebastian@lw.fr"
  },
  {
    group: fat_america_brln,
    email: "boris@lw.fr"
  },
  {
    group: fat_america_brln,
    email: "sebastian@lw.fr"
  },
  {
    group: fat_america_rmtgn,
    email: "boris@lw.fr"
  },
  {
    group: fat_america_rmtgn,
    email: "sebastian@lw.fr"
  },
  {
    group: tulane_chabad_2,
    email: "boris@lw.fr"
  },
  {
    group: tulane_chabad_2,
    email: "sebastian@lw.fr"
  },
  {
    group: fat_america_tlv_spr,
    email: "boris@lw.fr"
  },
  {
    group: fat_america_tlv_spr,
    email: "sebastian@lw.fr"
  },
  {
    group: lewagon_tlv_1,
    email: "boris@lw.fr"
  },
  {
    group: lewagon_tlv_1,
    email: "sebastian@lw.fr"
  },
]

#generate invitations seeds for all invitations seed info
Invitation.create!(invitations_attributes)

