# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first) 

User.create(username: 'Amaz') do |user|
    Marker.create(user: user, longitude: 1111, latitude: 2222, title: 'home', description: 'nice n cosy')
    AnalysedPhoto.create(user: user, photoUri: 'test', labels: '[{"name": "AMLAMSAKDFNKLAWNSDFAKLSN", "value": 30}, {"name": "jfbdfjkhdbsl", "value": 2}]' )
end


# testString = "[{'name': 'darkness', 'value': 30}, {'name': 'stuff', 'value': 2}]"
# testString2 = '[{"name": "darkness", "value": 30}, {"name": "stuff", "value": 2}]'
