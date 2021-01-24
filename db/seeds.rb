# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🐉 Razing it all to the ground 🦖 🦕"
User.destroy_all
Mocktail.destroy_all
Tag.destroy_all
Measurement.destroy_all
Ingredient.destroy_all

mocktailnames = [
    "No-Groni", "Fauxjito", "You're My Huckleberry", "Switchel Hitter", "Shirley Tonic", "Candyland", "Blueberry Tangie", "Double Dutch", "Salty Pineapple", "'Virgin' Bloody Mary", "Bullini", "Prohibition", "Long Island Actually it's just Iced Tea", "Spicy Margaret"
]
mockpics = [
    "https://static01.nyt.com/images/2015/07/14/dining/xxwatermeloncucumber/xxwatermeloncucumber-articleLarge.jpg",
    "https://static01.nyt.com/images/2015/07/13/dining/xxfaux/xxfaux-articleLarge.jpg",
    "https://static01.nyt.com/images/2017/06/28/dining/28MOCKTAILS2/28MOCKTAILS2-articleLarge-v2.jpg",
    "https://static01.nyt.com/images/2017/06/28/dining/28MOCKTAILS4/28MOCKTAILS4-articleLarge.jpg",
    "https://static01.nyt.com/images/2016/08/15/dining/15COOKING-LEMONADE2/15COOKING-LEMONADE2-articleLarge.jpg",
    "https://static01.nyt.com/images/2013/09/08/magazine/08drink/mag-08Drink-t_CA0-articleLarge.jpg",
    "https://static01.nyt.com/images/2019/05/21/dining/kwr-dirty-horchata/kwr-dirty-horchata-articleLarge.jpg",
    "https://static01.nyt.com/images/2019/06/12/dining/10Tajinrex/merlin_156061500_17b2227d-01f8-4839-b8ae-1970228d6b7c-articleLarge.jpg",
    "https://static01.nyt.com/images/2009/05/22/health/22recipehealth_600/22recipehealth_600-articleLarge.jpg",
    "https://static01.nyt.com/images/2020/04/08/dining/08whippedcoffee-drink/08whippedcoffee-drink-articleLarge.jpg"
]
glasses = [
    "Pint Glass", "Highball", "Flute", "Old Fashioned Glass", "Rocks Glass", "Nick and Nora", "Snifter", "Mule", "Coup", "Tulip Glass", "Collins Glass", "Wine Glass", "Hurricane Glass", "Martini Glass", "Margarita Glass"
]
tags = [
    "Tiki", "Classic", "Blended", "Punch", "Hot", "Short", "Bitter", "Contemporary", "no abv", "low abv"
]
taste = [
    "sweet", "sour", "salty", "bitter", "umami"
]
measures = [
    {imperial: "dash", metric: "dash"}, 
    {imperial: "splash", metric: "splash"}, 
    {imperial: "1 tsp", metric: "5 mL"}, 
    {imperial: "1/4 oz", metric: "7.5 mL"}, 
    {imperial: "1 Tbsp", metric: "15 mL"},  
    {imperial: "1/2 oz", metric: "15 mL"},
    {imperial: "3/4 oz", metric: "22 mL"},
    {imperial: "1 oz", metric: "30 mL"},
    {imperial: "1 1/4 oz", metric: "37 mL"},
    {imperial: "1 1/2 oz", metric: "45 mL"},
    {imperial: "1 3/4 oz", metric: "52 mL"},
    {imperial: "2oz", metric: "60 mL"}
]

userpics = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzAExw3XDQGWEm0Degp2o9qwSn2dzaMmHwxQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVl6XsX8eK_eH-AUArDk97uJkfgMOYaZXEeg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCvdp-eTy0KCHD2_H_v-MSEqiZROG7v3sneg&usqp=CAU",
    "https://ichef.bbci.co.uk/images/ic/640x360/p07j56b3.jpg",
    "https://www.doctorwhotv.co.uk/wp-content/uploads/martha-jones-stolen-earth-570x428.jpg"
]

puts "creating tags"
tags.each do |tag|
    Tag.create!({:tag => tag})
end

puts "creating measurements"

measures.each do |measurement|
    Measurement.create measurement
end

puts "making ingredients"
50.times do 
    Ingredient.create!(
        name: Faker::Food.ingredient,
        taste: taste.sample
    )
end

puts "Mixing some drinks 🧉"
8.times do 
    mocktail = Mocktail.create!(
        name: mocktailnames.sample,
        image: mockpics.sample,
        glassware: glasses.sample,
        instructions: Faker::Movies::PrincessBride.quote,
        rating: rand(1..5),
        about: Faker::Food.description,
        creator: Faker::Name.name
    )

    5.times do
        MockIngred.create!(
            mocktail_id: mocktail.id,
            measurement_id: Measurement.all.sample.id,
            ingredient_id: Ingredient.all.sample.id
        )
    end

    2.times do
        MockTag.create!(
            mocktail_id: mocktail.id,
            tag_id: Tag.all.sample.id
        )
    end
end

rebecca = User.create(
    first_name: "Bex",
    last_name: "Robin",
    user_name: "BexDrinks",
    image: "https://scontent.ftpa1-2.fna.fbcdn.net/v/t1.0-9/53726469_10113258332552133_3325061687974821888_o.jpg?_nc_cat=111&ccb=2&_nc_sid=84a396&_nc_ohc=JIAZ6i0AV2wAX82_Pr3&_nc_ht=scontent.ftpa1-2.fna&oh=5d487c60cdeb0add87517046fd28dbde&oe=60337DEA",
    location: "Melbourne, FL",
    bio: "Former barista and bartender making sure that everyone has a good drink and a good time.",
    profesh: "Software Engineer"
)

# puts "Creating human life 👶🏻"
# 5.times do 
#     user = User.create!(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         user_name: Faker::TvShows::DrWho.villain,
#         image: userpics.sample,
#         location: Faker::Address.city,
#         bio: Faker::Hipster.sentence,
#         profesh: Faker::Boolean.boolean 
#     )
# end

puts "Creating Users Mocktails🥂"
10.times do
    usersMocktail = UsersMocktail.create!(
        user_id: rebecca.id,
        mocktail_id: Mocktail.all.sample.id,
        r_and_d: false,
        favorite: true
    )
end

puts "📜 writing some notes 🖋"
5.times do
    note = Note.create!(
        users_mocktail_id: UsersMocktail.all.sample.id,
        user_id: rebecca.id,
        note: Faker::Lorem.sentences(number: 2)
    )
end




