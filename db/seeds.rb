# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clubs = Club.create([
  { short: 'Corporate', name: 'Corporate' },
  { short: 'Boston', name: 'Sports Club/LA – Boston' },
  { short: 'Miami', name: 'Sports Club/LA – Miami' },
  { short: 'Upper East Side', name: 'Sports Club/LA – New York on the Upper East Side' },
  { short: 'RSCNY', name: 'Reebok Sports Club/NY' },
  { short: 'San Francisco', name: 'Sports Club/LA – San Francisco' },
  { short: 'DC', name: 'Sports Club/LA – Washington, DC' },
  { short: 'Chestnut Hill', name: 'Sports Club/LA – Chestnut Hill' }
])

User.create({ email: 'bsaufley@mp-sportsclub.com', password: 'Password1$' })