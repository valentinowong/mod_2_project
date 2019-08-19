# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# game1 = Game.create(name: "Color Hunt", description: "A fast-paced, fun-filled scavenger hunt based on finding objects of a specific color!")

# mission1 = Mission.create(name: "Red Mission", content: "Find (and take a selfie) with something that is red.", game_id: Game.find_by(name: "Color Hunt").id)
# mission2 = Mission.create(name: "Orange Mission", content: "Find (and take a selfie) with something that is orange.", game_id: Game.find_by(name: "Color Hunt").id)
# mission3 = Mission.create(name: "Yellow Mission", content: "Find (and take a selfie) with something that is yellow.", game_id: Game.find_by(name: "Color Hunt").id)
# mission4 = Mission.create(name: "Green Mission", content: "Find (and take a selfie) with something that is green.", game_id: Game.find_by(name: "Color Hunt").id)
# mission5 = Mission.create(name: "Blue Mission", content: "Find (and take a selfie) with something that is blue.", game_id: Game.find_by(name: "Color Hunt").id)
# mission6 = Mission.create(name: "Purple Mission", content: "Find (and take a selfie) with something that is purple.", game_id: Game.find_by(name: "Color Hunt").id)

# user1 = User.create(name: "Meg", email: "meg@example.com", password_digest: "somethingcomplicated")
# user2 = User.create(name: "Val", email: "val@example.com", password_digest: "Also Something Complicated")

# game_room1 = GameRoom.create(admin_id: User.find_by(name: "Meg").id, game_id: Game.find_by(name: "Color Hunt").id)

# # photo1 = Photo.create(url: "https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", user_id: User.find_by(name: "Val").id, mission_id: Mission.find_by(name: "Orange Mission").id, datetime: Time.now)

# user3 = User.create(name: "Tony", email: "tony@example.com", password_digest: "Also Something Complicated")
# user4 = User.create(name: "Sebastian", email: "sebastian@example.com", password_digest: "Also Something Complicated")
# user5 = User.create(name: "Greg", email: "greg@example.com", password_digest: "Also Something Complicated")
# user6 = User.create(name: "Varun", email: "varun@example.com", password_digest: "Also Something Complicated")
# user7 = User.create(name: "Andrew", email: "andrew@example.com", password_digest: "Also Something Complicated")

# gameplayer1 = GamePlayer.create(player_id: User.find_by(name: "Tony").id, game_room_id: GameRoom.find(1).id)
# gameplayer2 = GamePlayer.create(player_id: User.find_by(name: "Sebastian").id, game_room_id: GameRoom.find(1).id)
# gameplayer3 = GamePlayer.create(player_id: User.find_by(name: "Greg").id, game_room_id: GameRoom.find(1).id)
# gameplayer4 = GamePlayer.create(player_id: User.find_by(name: "Varun").id, game_room_id: GameRoom.find(1).id)
# gameplayer5 = GamePlayer.create(player_id: User.find_by(name: "Andrew").id, game_room_id: GameRoom.find(1).id)
# gameplayer6 = GamePlayer.create(player_id: User.find_by(name: "Val").id, game_room_id: GameRoom.find(1).id)