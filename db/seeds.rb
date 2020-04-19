# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user0 = User.create(username: "vera", email: "vera@gmail.com")
user1 = User.create(username: "giantp", email: "gian@gmail.com", primary_role: true)
user2 = User.create(username: "crontp", email: "cron@gmail.com")
user3 = User.create(username: "cruz", email: "cruz@gmail.com", primary_role: true)
user4 = User.create(username: "Traverso", email: "traverso@gmail.com")
user5 = User.create(username: "fabio", email: "fabio@gmail.com")
user6 = User.create(username: "aceitunalarata", email: "rata@gmail.com")
user7 = User.create(username: "martin", email: "martin@gmail.com")
user8 = User.create(username: "alvaro", email: "alvaro@gmail.com")
user9 = User.create(username: "rai", email: "rai@gmail.com")

org1 = Organization.create(name: "Uandes")
org2 = Organization.create(name: "amigos")

event1 = Event.create(name: "CafeConcert", user: user1, public: true)
event2 = Event.create(name: "asadoing", user: user6, public: false)
event3 = Event.create(name: "jing", user: user3, public: true)
event4 = Event.create(name: "eventobacan", user: user1, public: true)

ug0 = UserGuest.create(user: user0, event: event1)
ug1 = UserGuest.create(user: user1, event: event2)
ug2 = UserGuest.create(user: user2, event: event3)
ug3 = UserGuest.create(user: user3, event: event4)
ug4 = UserGuest.create(user: user4, event: event1)
ug5 = UserGuest.create(user: user5, event: event2)
ug6 = UserGuest.create(user: user6, event: event3)
ug7 = UserGuest.create(user: user7, event: event4)
ug8 = UserGuest.create(user: user8, event: event1)
ug9 = UserGuest.create(user: user9, event: event2)

orgm0 = OrganizationMember.create(user: user0, organization: org1, user_role: "administrator")
orgm1 = OrganizationMember.create(user: user1, organization: org1)
orgm2 = OrganizationMember.create(user: user2, organization: org1)
orgm3 = OrganizationMember.create(user: user3, organization: org1)
orgm4 = OrganizationMember.create(user: user4, organization: org1)
orgm5 = OrganizationMember.create(user: user5, organization: org2, user_role: "administrator")
orgm6 = OrganizationMember.create(user: user6, organization: org2)
orgm7 = OrganizationMember.create(user: user7, organization: org2)
orgm8 = OrganizationMember.create(user: user8, organization: org2)
orgm9 = OrganizationMember.create(user: user9, organization: org2)

oe1 = OrganizationEvent.create(event: event1, organization: org1)
oe2 = OrganizationEvent.create(event: event2, organization: org1)
oe3 = OrganizationEvent.create(event: event3, organization: org2)
oe4 = OrganizationEvent.create(event: event4, organization: org2)

date1 = DateEvent.create(date: "2020-02-01 15:30:00", event: event1)
date2 = DateEvent.create(date: "2020-02-01 16:30:00", event: event1)
date3 = DateEvent.create(date: "2020-02-01 17:30:00", event: event1)

vote1 = Vote.create(user: user4, date_event: date1)
vote2 = Vote.create(user: user8, date_event: date2)

comm1 = Comment.create(text: "hola que buen evento", user: user4, event: event1)
comm2 = Comment.create(text: "hola", user: user8, event: event1)
comm3 = Comment.create(text: "adios", user: user0, event: event1)
comm4 = Comment.create(text: "buena", user: user1, event: event1)

comm5 = Comment.create(text: "buena", user: user1, event: event2)
comm6 = Comment.create(text: "buena", user: user1, event: event2)
