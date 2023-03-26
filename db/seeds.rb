# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' , { name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)
    @schitts_creek = Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)
    @arrested_development = Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)
    @modern_family = Sitcom.create!(name: "Modern Family", streaming: true, number_of_seasons:11, year_end: 2020)


    @david_rose = @schitts_creek.characters.create!(name: "David Rose", disposition: 'pretentious & phobic', has_job: true, number_of_children: 0)
    @moira_rose = @schitts_creek.characters.create!(name: "Moira Rose", disposition: 'eccentric former soap opera star', has_job: false, number_of_children: 2)
    @stevie_budd = @schitts_creek.characters.create!(name: "Stevie Budd", disposition: 'sardonic hotel clerk', has_job: true, number_of_children: 0)

    @lucille_bluth = @arrested_development.characters.create!(name: "Lucille Bluth", disposition: 'ruthless alcoholic', has_job: false, number_of_children: 4)
    @george_michael = @arrested_development.characters.create!(name: "George Michael Bluth", disposition: 'shy and in love with cousin', has_job: true, number_of_children: 0)
    @tobias = @arrested_development.characters.create!(name: "Tobias Funke", disposition: 'never-nude', has_job: false, number_of_children: 1)
    @jay = @modern_family.characters.create!(name: "Jay Pritchett", disposition: 'patriarch, lover of Gloria, Stella and closets', has_job: true, number_of_children: 4)
    @phil = @modern_family.characters.create!(name: "Phil Dunphy", disposition: 'fun-loving, self described cool dad', has_job: true, number_of_children: 3)
