# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Hoppie", email: "hoppie@doppie.com")
User.create(name: "Ghost Nappa", email: "nappadappa@ghost.com")
User.create(name: "Vegeta", email: "vegeta@saiyan.com")
User.create(name: "Bulma", email: "bulma@yamcha.com")
User.create(name: "Goku", email: "goku@saiyan.com")
Event.create(date: "2020-12-30 08:00", title: "Frat house party", description: "A kwaai place to chill lekke with some tjerries and bier", location: "My place bro", creator_id: 1)
# Event.create(title: "Trashing a frat house party", location: "Hoppie's place bro", creator_id: 2)
# Event.create(title: "Don't forget the TP and beer", location: "Hoppie's place", creator_id: 2)
Event.create(date: "2021-1-1 10:00", title: "Celebrating Nappa's Death", description: "A superb party from morning until evening to celebrate the death of Nappa. Damn you, Nappa...", location: "Quantum Park", creator_id: 3)

# Hoppie Party
EventAttendee.create(attendee_id: 2, enrolled_event_id: 1)
EventAttendee.create(attendee_id: 1, enrolled_event_id: 2)
EventAttendee.create(attendee_id: 2, enrolled_event_id: 2)
EventAttendee.create(attendee_id: 4, enrolled_event_id: 2)
EventAttendee.create(attendee_id: 5, enrolled_event_id: 2)