# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user0 = User.create(username: "vera", email: "vera@gmail.com", password: "12345678")
user1 = User.create(username: "giantp", email: "gian@gmail.com", primary_role: false, password: "12345678")
user2 = User.create(username: "crontp", email: "cron@gmail.com",password: "12345678")
user3 = User.create(username: "cruz", email: "cruz@gmail.com", primary_role: false, password: "12345678")
user4 = User.create(username: "Traverso", email: "traverso@gmail.com",password: "12345678")
user5 = User.create(username: "fabio", email: "fabio@gmail.com",password: "12345678")
user6 = User.create(username: "aceitunalarata", email: "rata@gmail.com",password: "12345678")
user7 = User.create(username: "martin", email: "martin@gmail.com",password: "12345678")
user8 = User.create(username: "alvaro", email: "alvaro@gmail.com",password: "12345678")
user9 = User.create(username: "rai", email: "rai@gmail.com",password: "12345678")
user10 = User.create(username: "Admin", email: "admin@gmail.com",password: "12345678", primary_role: true)

pro0 = ProfilePage.create(user: user0, name: "Alfonso Vera", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro1 = ProfilePage.create(user: user1, name: "Gianfranco Traverso", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro2 = ProfilePage.create(user: user2, name: "Stefano Garcia", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro3 = ProfilePage.create(user: user3, name: "Pedro Perez", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro4 = ProfilePage.create(user: user4, name: "Antonio Gonzales", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro5 = ProfilePage.create(user: user5, name: "Agustin Diaz", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro6 = ProfilePage.create(user: user6, name: "Agueda Cuellar", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro7 = ProfilePage.create(user: user7, name: "Naima Tejera", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro7 = ProfilePage.create(user: user8, name: "Aurora Planas", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )
pro8 = ProfilePage.create(user: user9, name: "Laila Julian", biography: "Hola, soy alumno de la universidad de los andes", location: "Santiago", )

proimg0 = ProfileImage.create(profile_page: pro1, image:  "img (18).jpg")
proimg1 = ProfileImage.create(profile_page: pro1, image: "img (35).jpg")
proimg2 = ProfileImage.create(profile_page: pro1, image: "img (73).jpg")
proimg3 = ProfileImage.create(profile_page: pro1, image: "mountain1.jpg")
proimg4 = ProfileImage.create(profile_page: pro1, image: "mountain2.jpg")
proimg5 = ProfileImage.create(profile_page: pro1, image: "mountain3.jpg")

org1 = Organization.create(name: "Uandes", description: "organizacion compuesta por estudiantes y profesores de la universidad de los Andes.")
orgMem1 = OrganizationMember.create(user_role: "administrator", user: user0 , organization_id: org1.id)
org2 = Organization.create(name: "amigos", description: "Mis amigos del colegio.")
orgMem2 = OrganizationMember.create(user_role: "administrator", user: user0 , organization_id: org2.id)

event1 = Event.create(name: "Cafe Concert", user: user1, public: true, description:"El más famoso concierto de la Universidad de los Andes", location: "Santiago")
event2 = Event.create(name: "Asado ING", user: user6, public: false, date: "2022-02-01 15:30:00", location: "Santiago")
event3 = Event.create(name: "Jing", user: user3, public: true, date: "2022-06-22 15:30:00", location: "Santiago")
event4 = Event.create(name: "Evento bacan", user: user1, public: true, date: "2020-09-18 15:30:00", location: "Santiago")
event5 = Event.create(name: "Cumpleaños", user: user1, public: true, date: "2020-06-06 15:30:00", location: "Santiago")
event6 = Event.create(name: "Camping", user: user6, public: false, date: "2021-02-01 15:30:00", location: "Santiago")
event7 = Event.create(name: "Junta de Curso", user: user3, public: true, date: "2020-10-06 15:30:00", location: "Santiago")
event8 = Event.create(name: "Otro evento bacan", user: user1, public: true, date: "2020-09-18 15:30:00", location: "Santiago")
event9 = Event.create(name: "Marriage Brandon - Lizzie", user: user1, public: true, date: "2022-10-18 15:30:00", location: "243, Mohak Av. Atlanta, Georgia, EEUU")

eventimg1 = EventImage.create(event:event1, image: "cafe.jpg")
eventimg1 = EventImage.create(event:event1, image: "cafe2.jpg")

eventimg1 = EventImage.create(event:event2, image: "quincho2.jpg")

eventimg1 = EventImage.create(event:event9, image: "jonathan-borba-eg-72fI9wK4-unsplash.jpg")
eventimg2 = EventImage.create(event:event9, image: "andreas-ronningen-S2YssLw97l4-unsplash.jpg")

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
ug10 = UserGuest.create(user: user0, event: event5)
ug11 = UserGuest.create(user: user1, event: event6)
ug12 = UserGuest.create(user: user2, event: event7)
ug13 = UserGuest.create(user: user3, event: event8)
ug14 = UserGuest.create(user: user4, event: event5)
ug15 = UserGuest.create(user: user5, event: event6)
ug16 = UserGuest.create(user: user6, event: event7)
ug17 = UserGuest.create(user: user7, event: event8)
ug18 = UserGuest.create(user: user8, event: event5)
ug19 = UserGuest.create(user: user9, event: event6)
ug20 = UserGuest.create(user: user9, event: event9)

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
oe3 = OrganizationEvent.create(event: event3, organization: org1)
oe4 = OrganizationEvent.create(event: event4, organization: org1)

oe1 = OrganizationEvent.create(event: event5, organization: org2)
oe2 = OrganizationEvent.create(event: event6, organization: org2)
oe3 = OrganizationEvent.create(event: event7, organization: org2)
oe4 = OrganizationEvent.create(event: event8, organization: org2)

date1 = DateEvent.create(date: "2022-02-01 15:30:00", event: event1)
date2 = DateEvent.create(date: "2022-02-01 16:30:00", event: event1)
date3 = DateEvent.create(date: "2022-02-01 17:30:00", event: event1)

comm1 = Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
                    ipsum dolor sit amet, consectetur adipiscing elit.", user: user4, event: event1)
comm2 = Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
                    ipsum dolor sit amet, consectetur adipiscing elit.", user: user8, event: event1)
comm3 = Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
                    ipsum dolor sit amet, consectetur adipiscing elit.", user: user0, event: event1)
comm4 = Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
                    ipsum dolor sit amet, consectetur adipiscing elit.", user: user1, event: event1)

comm5 = Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
                    ipsum dolor sit amet, consectetur adipiscing elit.", user: user1, event: event2)
comm6 = Comment.create(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur
                    adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem
                    ipsum dolor sit amet, consectetur adipiscing elit.", user: user1, event: event2)

mes0 = Message.create(text: "Hola", user: user1)
mesr0 = MessageRecipient.create(message: mes0, user: user4)

mes1 = Message.create(text: "Hola", user: user4)
mesr1 = MessageRecipient.create(message: mes1, user: user1)

mes2 = Message.create(text: "Como Estas?", user: user1)
mesr2 = MessageRecipient.create(message: mes2, user: user4)

mes3 = Message.create(text: "Bien y tu?", user: user4)
mesr3 = MessageRecipient.create(message: mes3, user: user1)

mes4 = Message.create(text: "Bien, tu vas al evento", user: user1)
mesr4 = MessageRecipient.create(message: mes4, user: user4)

mes5 = Message.create(text: "Si, y tu?", user: user4)
mesr5 = MessageRecipient.create(message: mes5, user: user1)

mes6 = Message.create(text: "Tambien, genial!", user: user1)
mesr6 = MessageRecipient.create(message: mes6, user: user4)