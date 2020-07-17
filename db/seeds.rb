# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Injury.destroy_all
Stat.destroy_all
Athlete.destroy_all
Team.destroy_all
User.destroy_all

user_seeds = 5
team_seeds = 15
athlete_seeds = 200
stat_seeds = 200
injury_seeds = 50

years = ["Freshman", "Sophomore", "Junior", "Senior"]
tests = ["10yd Sprint", "Vertical Jump", "Broad Jump", "Kneeling Medicine Ball Throw"]
body_parts = ["Back", "Knee", "Elbow", "Hip", "Ankle", "Foot"]


user_seeds.times do
    User.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        username: Faker::Team.unique.mascot,
        email: Faker::Name.unique.first_name + "@gmail.com",
        password: rand(10**5..10**6-1).to_s
    )
end

team_seeds.times do
    Team.create!(
        name: Faker::Team.sport, 
        logo: "fdfads",
        user_id: User.all.sample.id
    )
end

athlete_seeds.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "dfjahsdlkfs",
        user_id: User.all.sample.id,
        team_id: Team.all.sample.id
    )
end

stat_seeds.times do
    athlete = Athlete.all.sample
    Stat.create!(
        test_name: tests.sample,
        result: rand(0..30).to_s,
        date: Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: athlete.id,
        team_id: athlete.team.id
    )
end

injury_seeds.times do
    athlete = Athlete.all.sample
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: athlete.id,
        team_id: athlete.team.id
    )
end