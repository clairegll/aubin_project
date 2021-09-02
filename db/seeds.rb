#, This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Mission.destroy_all
User.destroy_all
Participation.destroy_all

admin_1 = User.create!(fullname: "Administrateur", city: "Paris", email: "contact@abnrecrutement.fr", password: "CTadmin13!", admin: true)
admin_2 = User.create!(fullname: "Antoine Aubin", city: "Paris", email: "antoine.aubin@abnrecrutement.fr", password: "AEadmin13!", admin: true)

puts "created #{User.count} users"


mission1 = Mission.create!(title: "Lorem ipsum dolor sit amet", location: "Paris", summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in est facilisis, ullamcorper ex vel, egestas mauris. In vulputate magna vitae est tempor, congue sagittis sem dignissim. Sed aliquam cursus elit, nec porta dui dictum ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in est facilisis, ullamcorper ex vel, egestas mauris. In vulputate magna vitae est tempor, congue sagittis sem dignissim. Sed aliquam cursus elit, nec porta dui dictum ut. ", user: user1, salary: 25, start_time: DateTime.new(2020,12,11,10,0,0), end_time: DateTime.new(2020,12,11,14,0,0), reference:"REF07", field:"Comptabilité", contract:"Intérim", description:"Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras eget sem in purus accumsan lobortis sed sed dolor. Curabitur lacinia, massa sed ullamcorper vulputate, erat velit tincidunt nisi, et varius odio ex sit amet arcu. Nulla eget neque diam. Nullam eleifend, nibh quis tristique molestie, nulla nunc porttitor quam, eget maximus urna mauris vitae est. Aliquam sed nulla pretium quam facilisis commodo. Praesent consectetur, nisl et ultricies tincidunt, risus augue lobortis ante, non vehicula odio felis ac ante. Fusce consectetur mattis mi sit amet blandit. Etiam congue est sed orci pellentesque, vitae tincidunt orci tincidunt. Nullam vel venenatis lacus. Donec venenatis sagittis tortor, non aliquam ligula porttitor non. Cras ac ipsum dui. Proin vehicula urna et metus volutpat, fringilla efficitur purus dapibus. Nam tempus nulla sit amet nisl rutrum vulputate ut ut odio.")
mission2 = Mission.create!(title: "Lorem ipsum dolor sit amet", location: "Marseille", summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in est facilisis, ullamcorper ex vel, egestas mauris. In vulputate magna vitae est tempor, congue sagittis sem dignissim. Sed aliquam cursus elit, nec porta dui dictum ut. ", user: user1, salary: 25, start_time: DateTime.new(2020,12,15,17,30,0), end_time: DateTime.new(2020,12,15,19,30,0),reference:"REF01", field:"Travaux Publics", contract:"CDI", profil:"- Maecenas sit amet libero non diam bibendum eleifend.", description:"Etiam lobortis sapien nulla, sed auctor mi egestas ac. Vestibulum condimentum dolor luctus augue dapibus, eu tempus lacus pellentesque. Mauris a rhoncus lorem. Cras semper ex ac lectus euismod auctor. Aliquam erat volutpat. Praesent dapibus porta justo ut luctus. Duis lacinia et neque in pretium. Cras congue, dolor congue varius tristique, urna ipsum vehicula elit, at dignissim eros libero dapibus mi. Nam iaculis dui arcu, eu feugiat nunc volutpat at.")
mission3 = Mission.create!(title: "Lorem ipsum dolor sit amet", location: "Nantes", summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in est facilisis, ullamcorper ex vel, egestas mauris. In vulputate magna vitae est tempor, congue sagittis sem dignissim. Sed aliquam cursus elit, nec porta dui dictum ut.", user: user1, salary: 25, start_time: DateTime.new(2020,12,15,17,30,0), end_time: DateTime.new(2020,12,15,19,30,0), reference:"REF13", field:"Ingenerie VRD", contract:"CDD", profil:"- Maecenas sit amet libero non diam bibendum eleifend. -Vivamus sapien magna, consectetur eget mauris non. -Iaculis consectetur ex", description:"Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras eget sem in purus accumsan lobortis sed sed dolor. Curabitur lacinia, massa sed ullamcorper vulputate, erat velit tincidunt nisi, et varius odio ex sit amet arcu. Nulla eget neque diam. Nullam eleifend, nibh quis tristique molestie, nulla nunc porttitor quam, eget maximus urna mauris vitae est. Aliquam sed nulla pretium quam facilisis commodo. Praesent consectetur, nisl et ultricies tincidunt, risus augue lobortis ante, non vehicula odio felis ac ante. Fusce consectetur mattis mi sit amet blandit. Etiam congue est sed orci pellentesque, vitae tincidunt orci tincidunt. Nullam vel venenatis lacus. Donec venenatis sagittis tortor, non aliquam ligula porttitor non. Cras ac ipsum dui. Proin vehicula urna et metus volutpat, fringilla efficitur purus dapibus. Nam tempus nulla sit amet nisl rutrum vulputate ut ut odio.")


puts "created #{Mission.count} missions"

