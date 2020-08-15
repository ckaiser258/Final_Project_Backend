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

user_seeds = 1
team_seeds = 1
athlete_seeds = 30
stat_seeds = 1
injury_seeds = 5

years = ["Freshman", "Sophomore", "Junior", "Senior"]
tests = ["10yd Sprint", "Vertical Jump", "Broad Jump", "Kneeling Medicine Ball Throw"]
body_parts = ["Back", "Knee", "Elbow", "Hip", "Ankle", "Foot"]


user_seeds.times do
    User.create!(
        first_name: "Colton", 
        last_name: "Kaiser", 
        username: "cdkaiser",
        email: "kaiserc2@seattleu.edu",
        password: "12345"
    )
end

team_seeds.times do
    Team.create!(
        name: "Soccer", 
        logo: "https://whoopdirt.com/wp-content/uploads/2020/06/SeattleUniversity_Logo_Hero_870_602_c1.png",
        user_id: 1
    )
end

team_seeds.times do
    Team.create!(
        name: Faker::Team.sport.capitalize, 
        logo: "https://whoopdirt.com/wp-content/uploads/2020/06/SeattleUniversity_Logo_Hero_870_602_c1.png",
        user_id: 1
    )
end

team_seeds.times do
    Team.create!(
        name: Faker::Team.sport.capitalize, 
        logo: "https://whoopdirt.com/wp-content/uploads/2020/06/SeattleUniversity_Logo_Hero_870_602_c1.png",
        user_id: 1
    )
end

team_seeds.times do
    Team.create!(
        name: Faker::Team.sport.capitalize, 
        logo: "https://whoopdirt.com/wp-content/uploads/2020/06/SeattleUniversity_Logo_Hero_870_602_c1.png",
        user_id: 1
    )
end

team_seeds.times do
    Team.create!(
        name: Faker::Team.sport.capitalize, 
        logo: "https://whoopdirt.com/wp-content/uploads/2020/06/SeattleUniversity_Logo_Hero_870_602_c1.png",
        user_id: 1
    )
end

team_seeds.times do
    Team.create!(
        name: Faker::Team.sport.capitalize, 
        logo: "https://whoopdirt.com/wp-content/uploads/2020/06/SeattleUniversity_Logo_Hero_870_602_c1.png",
        user_id: 1
    )
end

1.times do #Sample athlete
    Athlete.create!(
        id: 1,
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 1
    )
end

15.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 1
    )
end

15.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar2.png",
        user_id: 1,
        team_id: 1
    )
end

athlete_seeds.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 2
    )
end
athlete_seeds.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 3
    )
end

athlete_seeds.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 4
    )
end
athlete_seeds.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 5
    )
end
athlete_seeds.times do
    Athlete.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        year: years.sample,
        image: "https://www.w3schools.com/howto/img_avatar.png",
        user_id: 1,
        team_id: 6
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Body Weight",
        result: 160,
        date: "2020-01-27",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Body Weight",
        result: 157,
        date: "2020-02-04",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Body Weight",
        result: 160,
        date: "2020-02-11",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Body Weight",
        result: 165,
        date: "2020-02-18",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Body Weight",
        result: 167,
        date: "2020-02-25",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Vertical Jump",
        result: 25,
        date: "2020-01-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Vertical Jump",
        result: 27,
        date: "2020-04-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Vertical Jump",
        result: 29,
        date: "2020-07-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Vertical Jump",
        result: 28,
        date: "2020-10-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Vertical Jump",
        result: 29,
        date: "2020-11-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "20m Sprint",
        result: 3.2,
        date: "2020-01-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "20m Sprint",
        result: 3.1,
        date: "2020-04-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "20m Sprint",
        result: 3.0,
        date: "2020-07-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "20m Sprint",
        result: 3.3,
        date: "2020-10-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "20m Sprint",
        result: 2.9,
        date: "2020-11-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Broad Jump",
        result: 9,
        date: "2020-01-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Broad Jump",
        result: 9.3,
        date: "2020-04-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Broad Jump",
        result: 9,
        date: "2020-07-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Broad Jump",
        result: 9.7,
        date: "2020-10-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Broad Jump",
        result: 10,
        date: "2020-11-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Beep Test (YYIRT)",
        result: 25,
        date: "2020-01-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Beep Test (YYIRT)",
        result: 27,
        date: "2020-04-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Beep Test (YYIRT)",
        result: 25,
        date: "2020-07-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Beep Test (YYIRT)",
        result: 26,
        date: "2020-10-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "Beep Test (YYIRT)",
        result: 30,
        date: "2020-11-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "5-0-5",
        result: 3.2,
        date: "2020-01-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "5-0-5",
        result: 3,
        date: "2020-04-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "5-0-5",
        result: 2.9,
        date: "2020-07-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "5-0-5",
        result: 2.95,
        date: "2020-10-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

stat_seeds.times do
    # athlete = Athlete.all.sample
    Stat.create!(
        test_name: "5-0-5",
        result: 2.85,
        date: "2020-11-20",
        # Faker::Date.between(from: '2019-07-17', to: '2020-07-17'),
        athlete_id: 1,
        # athlete.id,
        team_id: 1,
        # athlete.team.id
    )
end

8.times do
    team = Team.find_by(id: 1)
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2020-01-09', to: '2020-11-20'),
        athlete_id: team.athletes.sample.id,
        team_id: team.id
    )
end

7.times do
    team = Team.find_by(id: 2)
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2020-01-09', to: '2020-11-20'),
        athlete_id: team.athletes.sample.id,
        team_id: team.id
    )
end

10.times do
    team = Team.find_by(id: 3)
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2020-01-09', to: '2020-11-20'),
        athlete_id: team.athletes.sample.id,
        team_id: team.id
    )
end

5.times do
    team = Team.find_by(id: 4)
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2020-01-09', to: '2020-11-20'),
        athlete_id: team.athletes.sample.id,
        team_id: team.id
    )
end

6.times do
    team = Team.find_by(id: 5)
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2020-01-09', to: '2020-11-20'),
        athlete_id: team.athletes.sample.id,
        team_id: team.id
    )
end

4.times do
    team = Team.find_by(id: 6)
    Injury.create!(
        site: body_parts.sample,
        description: Faker::Lorem.sentence,
        severity: rand(1..5),
        date: Faker::Date.between(from: '2020-01-09', to: '2020-11-20'),
        athlete_id: team.athletes.sample.id,
        team_id: team.id
    )
end