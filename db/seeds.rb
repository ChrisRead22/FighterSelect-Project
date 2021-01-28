# THIS SEED FILE NEEDS TO BE ENTIRELY REPLACED -- I'M LEAVING CODE FOR YOUR REFERENCE ONLY!

#Plant.destroy_all
#Person.destroy_all
#PlantParenthood.destroy_all
#Plant.reset_pk_sequence
#Person.reset_pk_sequence
#PlantParenthood.reset_pk_sequence
FighterSelect.destroy_all
Player.destroy_all
Fighter.destroy_all

########### different ways to write your seeds ############

# 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
#basil = Plant.create(name: "basil the herb", bought: 20200610, color: "green")
# sylwia = Person.create(name: "Sylwia", free_time: "none", age: 30)
# pp1 = PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection: 1_000_000, favorite?: true)
player1 = Player.create(name: "chris", fighting_game: "Street Fighter")
player2 = Player.create(name: "kaytlin", fighting_game: "Marvel vs Capcom")
player3 = Player.create(name: "J", fighting_game: "Tekken")

fighter1s = Fighter.create(name: "ryu", fight_style: "Standard", image:"https://upload.wikimedia.org/wikipedia/en/e/e5/Ryu_TvC.png" )
fighter2s = Fighter.create(name: "Dhalsim", fight_style: "Zoner")
fighter3s = Fighter.create(name: "Zangief", fight_style: "Grappler")
fighter1m = Fighter.create(name: "Dr.Doom", fight_style: "Zoner")
fighter2m = Fighter.create(name: "Nemesis", fight_style: "Grappler")
fighter3m = Fighter.create(name: "Wolverine", fight_style: "Standard")
fighter1t = Fighter.create(name: "Jin", fight_style: "Standard")
fighter2t = Fighter.create(name: "King", fight_style: "Grappler")
fighter3t = Fighter.create(name: "Noctis", fight_style: "Zoner")


fighter_select = FighterSelect.create(player_id: player1.id, fighter_id: fighter1s.id )
fighter_select = FighterSelect.create(player_id: player1.id, fighter_id: fighter2s.id )
fighter_select = FighterSelect.create(player_id: player1.id, fighter_id: fighter3s.id )
fighter_select = FighterSelect.create(player_id: player2.id, fighter_id: fighter1m.id )
fighter_select = FighterSelect.create(player_id: player2.id, fighter_id: fighter2m.id )
fighter_select = FighterSelect.create(player_id: player2.id, fighter_id: fighter3m.id )
fighter_select = FighterSelect.create(player_id: player3.id, fighter_id: fighter1t.id )
fighter_select = FighterSelect.create(player_id: player3.id, fighter_id: fighter2t.id )
fighter_select = FighterSelect.create(player_id: player3.id, fighter_id: fighter3t.id )

# # 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
# ## a. by passing an array of hashes:
# Plant.create([
#     {name: "Corn Tree", bought: 20170203, color: "green"},
#     {name: "Prayer plant", bought: 20190815, color: "purple"},
#     {name: "Cactus", bought: 20200110, color: "ugly green"}
# ])
# ## b. by interating over an array of hashes:
# plants = [{name: "Elephant bush", bought: 20180908, color: "green"},
#     {name: "Photos", bought: 20170910, color: "green"},
#     {name: "Dragon tree", bought: 20170910, color: "green"},
#     {name: "Snake plant", bought: 20170910, color: "dark green"},
#     {name: "polka dot plant", bought: 20170915, color: "pink and green"},
#     {name: "Cactus", bought: 20200517, color: "green"}]

# plants.each{|hash| Plant.create(hash)}

# # 3. Use Faker and mass create
# ## step 1: write a method that creates a person
# def create_person
#     free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

#     person = Person.create(
#         name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
#         free_time: free,
#         age: rand(11...70)
#     )
# end

# ## step 2: write a method that creates a joiner
# def create_joiners(person)
#     plants_number = rand(1..4)
#     plants_number.times do 
#         PlantParenthood.create(
#             plant_id: Plant.all.sample.id, 
#             person_id: person.id, 
#             affection: rand(101), 
#             favorite?: [true, false].sample
#         )
#     end
# end

# ## step 3: invoke creating joiners by passing in an instance of a person
# 10.times do     
#     create_joiners(create_person)
#     ##### ALTERNATIVE:
#     # person = create_person
#     # create_joiners(person)
# end

# indoor = Category.create(name: "indoors")

# Plant.update(category_id: indoor.id)


#puts "🔥 🔥 🔥 🔥 "