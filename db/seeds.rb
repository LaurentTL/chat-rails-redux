# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all
Channel.destroy_all
User.destroy_all

names = w%{general react paris}
nicknames = w%{Laurent Thanh-an Thomas Vorachit}

channels = names.map do |name|
  Channel.find_or_created_by(name: name)
end

users = nicknames.map do |nickname|
  User.create(email: "#{nickname}@lewagon.com", nickname: nickname, password: "test")
end


