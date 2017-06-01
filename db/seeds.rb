# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding Data ...'

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts 'Development seeds only (for now)!'
  exit 0
end

puts 'Seeding admin users ...'
User.destroy_all
user1 = User.create!({ email: 'Joshua@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true, name: "Joshua ", picture: "admin-avatar.png"})
user2 = User.create!({ email: 'root@user.com', password_digest: BCrypt::Password.create('1234'), admin: true, name: "Adam Yusif", picture: "admin-avatar.png"})
puts 'Seeding non-admin users ...'
user3 = User.create!({ email: 'william_peters@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Willma Peters", profession: "Retail", marital_status: "Married", hiv: false, veteran: true, immigrant: "citizen", age: 42, gender: "female", picture: "a.jpg"})
user4 = User.create!({ email: 'navneet_sondhi@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Navneet Sondhi", profession: "Service", marital_status: "Single", hiv: false, veteran: false, immigrant: "permanent resident", age: 58, gender: "female", picture: "b.png"})
user5 = User.create!({ email: 'bradley_macLaine@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Bradley MacLaine", profession: "Retail", marital_status: "Widowed", hiv: false, veteran: false, immigrant: "illegal", age: 42, gender: "male", picture: "c.jpg"})
user6 = User.create!({ email: 'pierre_gregoire@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Pierre Gregoire", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "permanent resident", age: 22, gender: "male", picture: "d.jpg"})
user7 = User.create!({ email: 'stevie_charron@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Steven (Tiny) Charron", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "citizen", age: 52, gender: "female", picture: "e.jpg"})
user8 = User.create!({ email: 'joshua_parisien.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Joshua Parisien", profession: "Retail", marital_status: "Single", hiv: false, veteran: false, immigrant: "undocumented", age: 21, gender: "male", picture: "f.png"})
user9 = User.create!({ email: 'john_paul@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "John Paul", profession: "Unemployed", marital_status: "Married", hiv: false, veteran: false, immigrant: "refugee", age: 19, gender: "male", picture: "g.png"})
user10 = User.create!({ email: 'greg_mccoy@gmail.com', password_digest: BCrypt::Password.create('1234'),  admin: false, name: "Gregory John Mcvoy", profession: "Service", marital_status: "Single", hiv: true, veteran: true, immigrant: "undocumented", age: 16, gender: "male", picture: "h.jpg"})
user11 = User.create!({ email: 'paul_mccann@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Paul McCann", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "permanent resident", age: 32, gender: "male", picture: "i.jpg"})
user12 = User.create!({ email: 'kenneth_lyons@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Kenneth Lyons", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: true, immigrant: "citizen", age: 14, gender: "male", picture: "a.jpg"})
user13 = User.create!({ email: 'kenneth_dargan@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Kenneth Dargan", profession: "Retail", marital_status: "Married", hiv: false, veteran: true, immigrant: "refugee", age: 37, gender: "male", picture: "b.png"})
user14 = User.create!({ email: 'lawrence_cook@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Lawrence Cook", profession: "Unemployed", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 64, gender: "male", picture: "c.jpg"})
user15 = User.create!({ email: 'steven_doyle@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Steven Doyle", profession: "Retail", marital_status: "Widowed", hiv: false, veteran: false, immigrant: "citizen", age: 83, gender: "male", picture: "b.png"})
user16 = User.create!({ email: 'meghan_johnson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Meghan (Princess) Johnson", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 75, gender: "female", picture: "a.jpg"})
user17 = User.create!({ email: 'paul_crombie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Paul Crombie", profession: "Service", marital_status: "Divorced", lgbt: true, hiv: true, veteran: false, immigrant: "illegal", age: 69, gender: "male", picture: "a.jpg"})
user18 = User.create!({ email: 'ivan_nova@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Ivan Nova", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "male", picture: "a.jpg"})
user19 = User.create!({ email: 'ramsey_whitefish@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Ramsey Whitefish", profession: "Unemployed", marital_status: "Married", hiv: false, veteran: false, immigrant: "citizen", age: 16, gender: "female", picture: "d.jpg"})
user20 = User.create!({ email: 'dean_hamilton@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Dean Hamilton", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "refugee", age: 18, gender: "female", picture: "d.jpg"})
user21 = User.create!({ email: 'houston_lecky@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Houston Lecky", profession: "Banker", marital_status: "Married", lgbt: true, hiv: true, veteran: false, immigrant: "refugee", age: 45, gender: "female", picture: "f.png"})
user22 = User.create!({ email: 'brian_quoquat@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brian Abel Quoquat", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: true, immigrant: "undocumented", age: 68, gender: "male", picture: "c.jpg"})
user23 = User.create!({ email: 'beverly_bernardin@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Beverly (Bev) Bernardin", profession: "Service", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 78, gender: "female", picture: "d.jpg"})
user24 = User.create!({ email: 'jason_cerasuolo@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Jason Cerasuolo", profession: "Banker", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 68, gender: "male", picture: "g.png"})
user25 = User.create!({ email: 'larry_raponi@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Larry (Lawrence) Raponi", profession: "Unemployed", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "illegal", age: 73, gender: "male", picture: "g.png"})
user26 = User.create!({ email: 'anthony_flint@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Anthony William Flint", profession: "Service", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 45, gender: "male", picture: "a.jpg"})
user27 = User.create!({ email: 'david_william Brown@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " David William Brown", profession: "Retail", marital_status: "Married", hiv: false, veteran: false, immigrant: "permanent resident", age: 77, gender: "male", picture: "h.jpg"})
user28 = User.create!({ email: 'weldon_savoy@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Weldon Savoy", profession: "Banker", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 51, gender: "female", picture: "f.png"})
user29 = User.create!({ email: 'charles_martin@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Charles Martin", profession: "Service", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 72, gender: "male", picture: "b.png"})
user30 = User.create!({ email: 'richard_schilden@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Richard Van Der Schilden", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "refugee", age: 21, gender: "male", picture: "c.jpg"})
user31 = User.create!({ email: 'orazio_zizzi @gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Orazio Zizzi ", profession: "Banker", marital_status: "Married", hiv: false, veteran: false, immigrant: "permanent resident", age: 24, gender: "female", picture: "d.jpg"})
user32 = User.create!({ email: 'brad_chapman@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brad Chapman", profession: "Service", marital_status: "Widowed", hiv: false, veteran: false, immigrant: "illegal", age: 39, gender: "male", picture: "b.png"})
user33 = User.create!({ email: 'robert_quenville@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Robert Quenville", profession: "Teacher", marital_status: "Widowed", hiv: false, veteran: false, immigrant: "undocumented", age: 48, gender: "male", picture: "c.jpg"})
user34 = User.create!({ email: 'rossie_carara@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Rossie Carara", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 28, gender: "female", picture: "a.jpg"})
user35 = User.create!({ email: 'pearl_syvret@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Pearl Syvret", profession: "Banker", marital_status: "Married", hiv: false, veteran: false, immigrant: "refugee", age: 30, gender: "female", picture: "a.jpg"})
user36 = User.create!({ email: 'sydney_archibald@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Sydney Archibald", profession: "Unemployed", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "refugee", age: 60, gender: "female", picture: "a.jpg"})
user37 = User.create!({ email: 'gerrrard_murack@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Gerrrard Murack", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "permanent resident", age: 38, gender: "male", picture: "b.png"})
user38 = User.create!({ email: 'avtar_sandhu@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Avtar Sandhu", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "citizen", age: 29, gender: "female", picture: "f.png"})
user39 = User.create!({ email: 'jamie_jones@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Jamie Patrick Jones", profession: "Retail", marital_status: "Single", hiv: false, veteran: false, immigrant: "illegal", age: 48, gender: "male", picture: "b.png"})
user40 = User.create!({ email: 'danielle_joseph_campbell@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Danielle Joseph Campbell", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "female", picture: "d.jpg"})
user41 = User.create!({ email: 'calvin_clayton_chevrier@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Calvin Clayton Chevrier", profession: "Unemployed", marital_status: "Single", hiv: true, veteran: false, immigrant: "citizen", age: 48, gender: "female", picture: "f.png"})
user42 = User.create!({ email: 'thomas_charles_hall@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Thomas Charles Hall", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "refugee", age: 52, gender: "male", picture: "c.jpg"})
user43 = User.create!({ email: 'man_huynh@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Man Huynh", profession: "Retail", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "undocumented", age: 58, gender: "female", picture: "a.jpg"})
user44 = User.create!({ email: 'grant_faulkner@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Grant (Gunner) Faulkner", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "citizen", age: 16, gender: "male", picture: "g.png"})
user45 = User.create!({ email: 'glen_abram@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Glen Abram", profession: "Banker", marital_status: "Widowed", hiv: false, veteran: false, immigrant: "citizen", age: 19, gender: "male", picture: "c.jpg"})
user46 = User.create!({ email: 'brian_lefebrve@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Brian Lefebrve", profession: "Banker", marital_status: "Married", hiv: false, veteran: false, immigrant: "permanent resident", age: 23, gender: "male", picture: "c.jpg"})
user47 = User.create!({ email: 'mark_louie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Mark Louie", profession: "Retail", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "illegal", age: 17, gender: "male", picture: "b.png"})
user48 = User.create!({ email: 'harold_ricky_Ackers@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Harold Ricky Ackers", profession: "Service", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "refugee", age: 62, gender: "male", picture: "h.jpg"})
user49 = User.create!({ email: 'brad_hadden@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brad Hadden", profession: "Unemployed", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "permanent resident", age: 22, gender: "male", picture: "h.jpg"})
user50 = User.create!({ email: 'fredrick_chaisson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Fredrick Chaisson", profession: "Plumber", marital_status: "Married", hiv: false, veteran: false, immigrant: "citizen", age: 34, gender: "male", picture: "c.jpg"})
user51 = User.create!({ email: 'alexandre_lavallee@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Alexa Joseph Lavallee", profession: "Unemployed", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 39, gender: "female", picture: "a.jpg"})
user52 = User.create!({ email: 'bob_charles_hall@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Johnson Charles Hall", profession: "Service", marital_status: "Widowed", hiv: false, veteran: true, immigrant: "refugee", age: 24, gender: "male", picture: "h.jpg"})
user53 = User.create!({ email: 'john_huynh@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Mandy Huynh", profession: "Retail", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "illegal", age: 48, gender: "female", picture: "a.jpg"})
user54 = User.create!({ email: 'joe_faulkner@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Farah Faulkner", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "citizen", age: 35, gender: "male", picture: "b.png"})
user55 = User.create!({ email: 'glen_jones@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Glen Jones", profession: "Banker", marital_status: "Single", hiv: false, veteran: false, immigrant: "refugee", age: 26, gender: "male", picture: "b.png"})
user56 = User.create!({ email: 'max_lefebrve@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Britney Lefebrve", profession: "Unemployed", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "permanent resident", age: 23, gender: "male", picture: "b.png"})
user57 = User.create!({ email: 'marry_louie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Marry Louie", profession: "Retail", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "undocumented", age: 37, gender: "female", picture: "d.jpg"})
user58 = User.create!({ email: 'harry_ricky_Ackers@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Hal Ricky Ackers", profession: "Plumber", marital_status: "Married", hiv: false, veteran: false, immigrant: "illegal", age: 42, gender: "female", picture: "f.png"})
user59 = User.create!({ email: 'brad_wong@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Bobby Hadden", profession: "Banker", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 32, gender: "female", picture: "f.png"})
user60 = User.create!({ email: 'fred_chaisson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Fred Chaisson", profession: "Service", marital_status: "Married", hiv: false, veteran: false, immigrant: "illegal", age: 44, gender: "female", picture: "f.png"})
user61 = User.create!({ email: 'david_westendorp@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "David Westendorp", profession: "Retail", marital_status: "Widowed", hiv: false, veteran: false, immigrant: "citizen", age: 18, gender: "male", picture: "b.png"})

puts "Standy- Creating User Reports... "

Report.destroy_all

    report1 =user3.reports.find_or_create_by!({
    sentiment: 0,
    meetings: false,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "voluptate ullamco veniam commodo voluptate anim esse minim aute excepteur deserunt cupidatat culpa irure id",
    created_at: Date.new(2017,04,30)})

    report2 =user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: false,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nostrud deserunt laborum sit mollit velit adipisicing mollit eiusmod fugiat sunt ipsum in ut nulla",
    created_at: Date.new(2017,05,01)})

    report3 =user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "elit nulla minim labore id Lorem velit commodo aliqua laboris non fugiat dolor adipisicing minim",
    created_at: Date.new(2017,05,02)})

    report4 =user3.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco deserunt non reprehenderit do id non tempor adipisicing velit aliqua sit esse sint ut",
    created_at: Date.new(2017,05,03)})

    report5 =user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "mollit proident anim nostrud ullamco magna officia consectetur sint incididunt et sit do cillum tempor",
    created_at: Date.new(2017,05,04)})

    report6 =user3.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "fugiat exercitation quis tempor quis voluptate dolor nostrud ex cupidatat eiusmod do irure commodo mollit",
    created_at: Date.new(2017,05,05)})

    report7 =user3.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "sunt aute ea laborum in voluptate irure id aliquip commodo nulla reprehenderit Lorem velit occaecat",
    created_at: Date.new(2017,05,06)})

    report8 =user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor aute ipsum incididunt laborum incididunt qui cupidatat do culpa ut qui laboris ipsum cupidatat",
    created_at: Date.new(2017,05,7)})

    report9 =user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "non quis incididunt fugiat consequat et voluptate aute dolore anim commodo culpa esse Lorem aliqua",
    created_at: Date.new(2017,05,8)})

    report10= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "Lorem ea nostrud consectetur aliquip laborum minim nostrud incididunt culpa nostrud occaecat minim et nisi",
    created_at: Date.new(2017,05,9)})

    report11= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ullamco voluptate fugiat amet cupidatat dolore adipisicing occaecat est esse non exercitation consequat ut excepteur",
    created_at: Date.new(2017,05,10)})

    report12= user3.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco Lorem culpa labore qui consequat cupidatat tempor do quis dolore dolore culpa officia ad",
    created_at: Date.new(2017,05,11)})

    report13= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "labore non adipisicing mollit do et aliquip est dolor dolore cupidatat adipisicing adipisicing amet et",
    created_at: Date.new(2017,05,12)})

    report14= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "sint nisi aliquip ex qui eu officia aliqua consequat eu dolore eu consequat non amet",
    created_at: Date.new(2017,05,13)})

    report15= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "aliqua et laborum non nulla cillum consectetur exercitation dolor ex exercitation ut incididunt tempor aute",
    created_at: Date.new(2017,05,14)})

    report16= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "qui aute id elit cillum proident tempor commodo dolor minim sunt incididunt consectetur incididunt nostrud",
    created_at: Date.new(2017,05,15)})

    report17= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "consectetur commodo eu in aliqua proident ullamco nisi ad elit veniam reprehenderit aliquip Lorem veniam",
    created_at: Date.new(2017,05,16)})

    report18= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nulla ea ullamco ullamco in deserunt elit anim est nostrud magna sit sint quis qui",
    created_at: Date.new(2017,05,17)})

    report19= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "qui fugiat consectetur proident consequat incididunt labore esse occaecat duis sit velit eu tempor nostrud",
    created_at: Date.new(2017,05,18)})

    report20= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "duis mollit exercitation consectetur magna aute voluptate et elit esse dolor incididunt cillum incididunt qui",
    created_at: Date.new(2017,05,19)})

    report21= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "cupidatat dolor tempor dolor sint voluptate enim eiusmod voluptate Lorem qui pariatur Lorem laborum qui",
    created_at: Date.new(2017,05,20)})

    report22= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo pariatur ut incididunt anim commodo sunt et tempor officia mollit in ex non do",
    created_at: Date.new(2017,05,21)})

    report23= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "reprehenderit non fugiat id non aliqua duis deserunt sint commodo pariatur elit ullamco ipsum do",
    created_at: Date.new(2017,05,22)})

    report24= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "officia nisi adipisicing pariatur irure quis sit adipisicing proident laboris dolore sit culpa esse nostrud",
    created_at: Date.new(2017,05,23)})

    report25= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "et Lorem qui qui dolore nulla anim sint reprehenderit anim nostrud sunt officia laborum est",
    created_at: Date.new(2017,05,24)})

    report26= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "aute anim sint exercitation eiusmod nostrud occaecat ipsum irure voluptate veniam consequat do dolore non",
    created_at: Date.new(2017,05,25)})

    report27= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "mollit duis cillum commodo mollit et aliqua magna excepteur consequat duis nulla est eiusmod ea",
    created_at: Date.new(2017,05,26)})

    report28= user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "non commodo non id consectetur et nostrud exercitation non amet adipisicing et anim veniam velit",
    created_at: Date.new(2017,05,27)})

    report29= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "pariatur anim aliqua ad et et veniam tempor aliquip officia consectetur reprehenderit deserunt ipsum aliquip",
    created_at: Date.new(2017,05,28)})

    report30= user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "dolore eu dolore fugiat officia sit do irure labore dolore aliqua aliqua irure qui eiusmod",
    created_at: Date.new(2017,05,29)})

    report31= user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo sit laboris pariatur excepteur adipisicing ut duis consectetur id voluptate mollit aliquip pariatur esse",
    created_at: Date.new(2017,05,30)})

    report32= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "magna officia occaecat ipsum commodo consectetur ea elit duis esse exercitation magna nisi do duis",
    created_at: Date.new(2017,05,31)})

    report33= user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "esse ex adipisicing voluptate enim reprehenderit consectetur exercitation pariatur enim sunt dolor enim do officia",
    created_at: Date.new(2017,06,01)})


    report34 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ipsum occaecat tempor culpa consectetur cupidatat aliquip minim pariatur ut ut reprehenderit nulla ipsum nostrud",
    created_at: Date.new(2017,04,30)})

    report35 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ea enim nulla ea laboris aliquip velit quis cillum velit laboris non elit commodo irure",
    created_at: Date.new(2017,05,01)})

    report36 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "laboris occaecat aute consequat sint tempor aute anim non ex labore sit tempor quis duis",
    created_at: Date.new(2017,05,02)})

    report37 =user4.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "incididunt nisi veniam in non in aute occaecat sit sint dolore et ad elit quis",
    created_at: Date.new(2017,05,03)})

    report38 =user4.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ipsum occaecat ullamco cillum ullamco velit nulla duis ipsum voluptate amet dolor amet aute et",
    created_at: Date.new(2017,05,04)})

    report39 =user4.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 3,
    notes: "duis sit consectetur deserunt dolor aliqua nulla anim eu et do nulla et excepteur enim",
    created_at: Date.new(2017,05,05)})

    report40 =user4.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "occaecat pariatur proident incididunt esse labore incididunt aliquip veniam minim officia nisi dolor quis ipsum",
    created_at: Date.new(2017,05,06)})

    report41 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 2,
    notes: "id enim cupidatat commodo incididunt in non tempor reprehenderit ad sint adipisicing occaecat do consectetur",
    created_at: Date.new(2017,05,07)})

    report42 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "minim aliquip minim Lorem est consectetur ullamco incididunt aliqua voluptate aliqua incididunt consequat laborum mollit",
    created_at: Date.new(2017,05,8)})

    report43 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "pariatur dolor reprehenderit enim cillum excepteur adipisicing incididunt ipsum in ea ea sint fugiat ullamco",
    created_at: Date.new(2017,05,9)})

    report44 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "consequat tempor ipsum veniam aute anim fugiat est eu laborum laborum occaecat ea pariatur laboris",
    created_at: Date.new(2017,05,10)})

    report45 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "ad reprehenderit qui eiusmod nulla qui consectetur voluptate sunt elit nisi aliquip commodo ullamco reprehenderit",
    created_at: Date.new(2017,05,11)})

    report46 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 1,
    notes: "id nulla sint irure occaecat cillum aliqua exercitation dolor proident est eiusmod consectetur ex culpa",
    created_at: Date.new(2017,05,12)})

    report47 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 4,
    notes: "ullamco velit ipsum consequat esse consequat nisi consectetur nostrud nulla exercitation qui sunt reprehenderit reprehenderit",
    created_at: Date.new(2017,05,13)})

    report48 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "magna laborum duis sit minim tempor cupidatat et pariatur ullamco incididunt culpa magna consectetur amet",
    created_at: Date.new(2017,05,14)})

    report49 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ea ipsum fugiat aliquip ipsum dolore aute pariatur ad ullamco cupidatat cupidatat proident dolore ex",
    created_at: Date.new(2017,05,15)})

    report50 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ea in magna exercitation irure sint consectetur in est duis laboris veniam incididunt pariatur esse",
    created_at: Date.new(2017,05,16)})

    report51 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "consectetur nisi ex voluptate aliquip cupidatat minim laboris tempor ipsum id sit laborum eiusmod consectetur",
    created_at: Date.new(2017,05,17)})

    report52 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 1,
    notes: "commodo quis quis aliquip voluptate aliquip Lorem est sint et esse laboris incididunt enim aliqua",
    created_at: Date.new(2017,05,18)})

    report53 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "consectetur sit irure amet consectetur aliqua minim consectetur culpa ut labore eiusmod ex occaecat officia",
    created_at: Date.new(2017,05,19)})

    report54 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "do dolore labore aute minim qui quis veniam dolore irure est aliquip do est nisi",
    created_at: Date.new(2017,05,20)})

    report55 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "nulla culpa esse labore ipsum Lorem reprehenderit eu sint et ullamco nisi aliquip consectetur fugiat",
    created_at: Date.new(2017,05,21)})

    report56 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ut proident officia reprehenderit sint fugiat quis sunt aute quis in irure Lorem dolore deserunt",
    created_at: Date.new(2017,05,22)})

    report57 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "velit aliqua magna deserunt nostrud quis consectetur nisi qui in Lorem eiusmod mollit dolore sint",
    created_at: Date.new(2017,05,23)})

    report58 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 3,
    notes: "tempor ex officia amet consequat id dolor sunt labore non velit aliquip dolor sint laborum",
    created_at: Date.new(2017,05,24)})

    report59 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "occaecat ullamco quis ullamco minim nisi amet consectetur ipsum consequat nulla culpa laboris voluptate occaecat",
    created_at: Date.new(2017,05,25)})

    report60 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "aute do dolor veniam ea eiusmod veniam tempor cupidatat commodo fugiat culpa ipsum duis eiusmod",
    created_at: Date.new(2017,05,26)})

    report61 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "dolore mollit est dolor cillum tempor aliqua incididunt adipisicing fugiat cillum adipisicing consequat et officia",
    created_at: Date.new(2017,05,27)})

    report62 =user4.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "labore anim incididunt Lorem eu ex est duis culpa labore ex veniam sunt cupidatat quis",
    created_at: Date.new(2017,05,28)})

    report63 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eiusmod culpa voluptate ullamco proident aliquip eu deserunt cupidatat id proident amet veniam tempor incididunt",
    created_at: Date.new(2017,05,29)})

    report64 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nostrud nulla labore voluptate qui commodo minim aliqua occaecat laborum nostrud irure sint incididunt minim",
    created_at: Date.new(2017,05,30)})

    report65 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolore nostrud quis fugiat qui incididunt officia elit incididunt ullamco labore culpa tempor velit velit",
    created_at: Date.new(2017,05,31)})

    report66 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "sunt esse ea magna enim occaecat minim amet proident est ullamco ex qui non deserunt",
    created_at: Date.new(2017,06,01)})

    report67 =user4.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "pariatur sunt consequat excepteur nostrud anim qui consequat eiusmod reprehenderit esse et eiusmod pariatur adipisicing",
    created_at: Date.new(2017,06,02)})


    report69 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "qui ad commodo occaecat qui laboris est enim consectetur do mollit id minim exercitation sunt",
    created_at: Date.new(2017,04,30)})

    report70 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "occaecat est ipsum voluptate ea nulla consequat deserunt duis ipsum reprehenderit commodo labore magna minim",
    created_at: Date.new(2017,05,01)})

    report71 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "consequat proident dolor voluptate nisi mollit fugiat ullamco voluptate id tempor voluptate dolore aute mollit",
    created_at: Date.new(2017,05,02)})

    report72 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "nisi nostrud eiusmod consectetur aliqua irure fugiat aliquip anim anim exercitation sit aliqua dolor ullamco",
    created_at: Date.new(2017,05,03)})

    report73 =user5.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ad anim consequat et adipisicing pariatur tempor exercitation exercitation do reprehenderit dolore dolor labore laboris",
    created_at: Date.new(2017,05,04)})

    report74 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "velit qui laboris exercitation anim velit voluptate irure eiusmod minim id mollit cupidatat quis proident",
    created_at: Date.new(2017,05,05)})

    report75 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "occaecat aliqua proident cupidatat cupidatat ut Lorem mollit eu cillum in exercitation magna minim qui",
    created_at: Date.new(2017,05,06)})

    report76 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "sit et sunt veniam enim non aliqua occaecat cupidatat nulla ut et ipsum reprehenderit laboris",
    created_at: Date.new(2017,05,07)})

    report77 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "velit tempor elit id sunt ut anim cillum quis aliquip sit proident esse deserunt non",
    created_at: Date.new(2017,05,8)})

    report78 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 2,
    notes: "magna consectetur exercitation cillum irure quis esse amet consequat amet excepteur eu amet nostrud anim",
    created_at: Date.new(2017,05,9)})

    report79 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "magna mollit eiusmod magna eiusmod elit minim do exercitation quis aliqua Lorem pariatur ad proident",
    created_at: Date.new(2017,05,10)})

    report80 =user5.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "pariatur ut adipisicing dolore ad qui in deserunt fugiat commodo aute fugiat fugiat veniam adipisicing",
    created_at: Date.new(2017,05,11)})

    report81 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolor esse aute sint cupidatat Lorem consectetur do cillum irure et esse ut sint eiusmod",
    created_at: Date.new(2017,05,12)})

    report82 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "minim Lorem ea sit adipisicing ut quis Lorem sint deserunt amet nulla aliquip culpa deserunt",
    created_at: Date.new(2017,05,13)})

    report83 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "tempor Lorem Lorem nulla consequat excepteur reprehenderit consectetur ea eiusmod sunt culpa adipisicing nulla nulla",
    created_at: Date.new(2017,05,14)})

    report84 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "adipisicing duis culpa quis exercitation magna ullamco ut esse ipsum aliqua ullamco quis elit laboris",
    created_at: Date.new(2017,05,15)})

    report85 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "in aliquip laboris quis mollit officia exercitation ipsum dolore aliqua elit enim eiusmod enim anim",
    created_at: Date.new(2017,05,16)})

    report86 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod ut ullamco duis cupidatat nostrud consequat dolore tempor culpa pariatur eu id magna aute",
    created_at: Date.new(2017,05,17)})

    report87 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "non dolor ad laboris laboris commodo commodo culpa aute minim veniam qui dolor sint nulla",
    created_at: Date.new(2017,05,18)})

    report88 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "id magna pariatur cillum cillum ullamco consectetur cupidatat velit nulla culpa occaecat esse ullamco elit",
    created_at: Date.new(2017,05,19)})

    report89 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eu occaecat laborum in eiusmod do pariatur occaecat ullamco fugiat mollit eu nostrud aliqua incididunt",
    created_at: Date.new(2017,05,20)})

    report90 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "laboris adipisicing eiusmod anim id ad ea sunt eu elit elit excepteur proident pariatur eiusmod",
    created_at: Date.new(2017,05,21)})

    report91 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "labore consequat consequat sit cillum tempor adipisicing veniam proident culpa deserunt mollit do excepteur proident",
    created_at: Date.new(2017,05,22)})

    report92 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "fugiat incididunt ad pariatur est ullamco ad cillum dolore incididunt irure culpa sunt ullamco eiusmod",
    created_at: Date.new(2017,05,23)})

    report93 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "non dolore excepteur consequat quis in reprehenderit adipisicing id sit velit laboris anim exercitation amet",
    created_at: Date.new(2017,05,24)})

    report94 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "sunt culpa cupidatat laboris dolore nulla tempor adipisicing in consectetur pariatur aute dolore non cillum",
    created_at: Date.new(2017,05,25)})

    report95 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "qui culpa labore id adipisicing tempor et duis velit elit nulla anim dolore non elit",
    created_at: Date.new(2017,05,26)})

    report96 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "quis irure qui laboris proident aliquip voluptate nulla incididunt minim eu cillum ea deserunt id",
    created_at: Date.new(2017,05,27)})

    report97 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing duis dolor mollit officia esse laboris sint deserunt velit commodo anim quis officia tempor",
    created_at: Date.new(2017,05,28)})

    report98 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "est duis est aliquip eiusmod fugiat cillum minim consequat ad est consectetur eiusmod reprehenderit mollit",
    created_at: Date.new(2017,05,29)})

    report99 =user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "consectetur duis nisi amet duis ullamco anim veniam ipsum et ex velit laborum non adipisicing",
    created_at: Date.new(2017,05,30)})

    report100= user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "nisi est dolore ad velit fugiat enim elit quis tempor sint magna et amet minim",
    created_at: Date.new(2017,05,31)})

    report101= user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ipsum consectetur voluptate Lorem ea magna voluptate sint incididunt ea duis qui laboris nostrud cupidatat",
    created_at: Date.new(2017,06,01)})

    report102= user5.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "in sint laborum dolor excepteur sint velit veniam duis id officia sunt qui occaecat exercitation",
    created_at: Date.new(2017,06,02)})


    report103= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "cupidatat occaecat ex laborum exercitation anim irure magna Lorem mollit consectetur reprehenderit labore aliqua est",
    created_at: Date.new(2017,04,30)})

    report104= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "mollit est velit deserunt duis eiusmod consectetur eu dolor dolor sunt velit est cillum officia",
    created_at: Date.new(2017,05,01)})

    report105= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "reprehenderit consectetur ex est laborum id minim non cupidatat commodo occaecat sunt mollit reprehenderit laborum",
    created_at: Date.new(2017,05,02)})

    report106= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "incididunt culpa proident aliquip in culpa minim aliquip anim nostrud pariatur incididunt cillum proident amet",
    created_at: Date.new(2017,05,03)})

    report107= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor commodo non consequat sunt mollit id officia ullamco eu non do magna reprehenderit duis",
    created_at: Date.new(2017,05,04)})

    report18= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "deserunt nulla occaecat elit ea Lorem eu labore cillum aliqua qui labore consequat proident aute",
    created_at: Date.new(2017,05,05)})

    report19= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ea eu eu nisi labore labore duis non pariatur deserunt ipsum exercitation nisi ex in",
    created_at: Date.new(2017,05,06)})

    report110= user6.reports.find_or_create_by!({

    meetings: false,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "Lorem tempor consequat et pariatur tempor voluptate do sint elit nulla ullamco laborum ad nisi",
    created_at: Date.new(2017,05,07)})

    report111= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing et enim dolore eu adipisicing sunt aute mollit excepteur deserunt occaecat nostrud occaecat fugiat",
    created_at: Date.new(2017,05,8)})

    report112= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod dolor elit non ullamco aute elit cupidatat irure do quis ipsum nostrud laboris pariatur",
    created_at: Date.new(2017,05,9)})

    report113= user6.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "nostrud ipsum anim occaecat elit excepteur occaecat nisi veniam duis voluptate consectetur consequat eiusmod duis",
    created_at: Date.new(2017,05,10)})

    report114= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "minim dolore aliqua exercitation aliquip laboris irure laboris velit deserunt nisi adipisicing excepteur veniam anim",
    created_at: Date.new(2017,05,11)})

    report115= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "reprehenderit ipsum ea commodo esse ex culpa qui irure cillum commodo laborum commodo dolor minim",
    created_at: Date.new(2017,05,12)})

    report116= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "esse commodo qui id sit proident minim irure pariatur est quis aliquip aute mollit do",
    created_at: Date.new(2017,05,13)})

    report117= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "aute anim Lorem Lorem ut cupidatat pariatur nostrud dolor minim elit ullamco nisi elit excepteur",
    created_at: Date.new(2017,05,14)})

    report118= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: true,
    weeks_homeless: 3,
    notes: "sint culpa ex do amet minim reprehenderit nostrud minim aute sint labore velit excepteur est",
    created_at: Date.new(2017,05,15)})

    report119= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 1,
    notes: "in aliquip occaecat adipisicing ipsum eu nostrud deserunt adipisicing sunt laboris esse qui labore ex",
    created_at: Date.new(2017,05,16)})

    report120= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 3,
    notes: "dolor duis excepteur laboris anim magna id cillum nulla non nostrud sint culpa occaecat ea",
    created_at: Date.new(2017,05,17)})

    report121= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "tempor sint et voluptate in dolor officia cillum anim esse mollit reprehenderit qui non amet",
    created_at: Date.new(2017,05,18)})

    report122= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "reprehenderit reprehenderit duis exercitation ad nisi irure in minim ullamco fugiat anim et esse sit",
    created_at: Date.new(2017,05,19)})

    report123= user6.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "Lorem velit proident sit nulla culpa qui laborum est excepteur magna veniam labore dolor nisi",
    created_at: Date.new(2017,05,20)})

    report124= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "non reprehenderit id proident eiusmod culpa quis eu sit labore mollit adipisicing consectetur do officia",
    created_at: Date.new(2017,05,21)})

    report125= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aliqua officia magna irure est ullamco commodo sit cillum adipisicing labore quis ullamco amet reprehenderit",
    created_at: Date.new(2017,05,22)})

    report126= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "nulla dolor nisi nostrud Lorem dolor incididunt non labore anim deserunt aute ullamco est minim",
    created_at: Date.new(2017,05,23)})

    report127= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "esse exercitation dolore veniam ullamco veniam aliqua elit aliqua commodo voluptate fugiat sit occaecat fugiat",
    created_at: Date.new(2017,05,24)})

    report128= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "culpa aliquip aute laborum minim ex veniam cupidatat quis incididunt nostrud eu culpa consectetur cupidatat",
    created_at: Date.new(2017,05,25)})

    report129= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "esse quis deserunt anim nostrud laborum Lorem aute reprehenderit proident exercitation ad voluptate cillum id",
    created_at: Date.new(2017,05,26)})

    report130= user6.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ad qui ad et commodo laboris non velit velit minim nisi labore do velit sint",
    created_at: Date.new(2017,05,27)})

    report131= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "tempor in excepteur ad nostrud ea nostrud voluptate ullamco aute amet culpa aliquip et laboris",
    created_at: Date.new(2017,05,28)})

    report132= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "do quis mollit est ex magna minim veniam qui irure sit labore amet mollit exercitation",
    created_at: Date.new(2017,05,29)})

    report133= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "excepteur exercitation excepteur culpa consectetur tempor Lorem mollit aliqua quis officia irure est est magna",
    created_at: Date.new(2017,05,30)})

    report134= user6.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "occaecat labore adipisicing enim qui esse eiusmod non laborum et magna ad ex culpa sit",
    created_at: Date.new(2017,05,31)})

    report135= user6.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "enim Lorem elit est ad Lorem incididunt ea in et elit qui labore pariatur esse",
    created_at: Date.new(2017,06,01)})

    report136= user6.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "irure nostrud pariatur ut exercitation proident reprehenderit est deserunt proident eiusmod veniam est sint culpa",
    created_at: Date.new(2017,06,02)})

    report1001 =user7.reports.find_or_create_by!({
    sentiment: 0,
    meetings: false,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "voluptate ullamco veniam commodo voluptate anim esse minim aute excepteur deserunt cupidatat culpa irure id",
    created_at: Date.new(2017,04,30)})

    report1002 =user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: false,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nostrud deserunt laborum sit mollit velit adipisicing mollit eiusmod fugiat sunt ipsum in ut nulla",
    created_at: Date.new(2017,05,01)})

    report1003 =user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "elit nulla minim labore id Lorem velit commodo aliqua laboris non fugiat dolor adipisicing minim",
    created_at: Date.new(2017,05,02)})

    report1004 =user7.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco deserunt non reprehenderit do id non tempor adipisicing velit aliqua sit esse sint ut",
    created_at: Date.new(2017,05,03)})

    report1005 =user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "mollit proident anim nostrud ullamco magna officia consectetur sint incididunt et sit do cillum tempor",
    created_at: Date.new(2017,05,04)})

    report1006 =user7.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "fugiat exercitation quis tempor quis voluptate dolor nostrud ex cupidatat eiusmod do irure commodo mollit",
    created_at: Date.new(2017,05,05)})

    report1007 =user7.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "sunt aute ea laborum in voluptate irure id aliquip commodo nulla reprehenderit Lorem velit occaecat",
    created_at: Date.new(2017,05,06)})

    report1008 =user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor aute ipsum incididunt laborum incididunt qui cupidatat do culpa ut qui laboris ipsum cupidatat",
    created_at: Date.new(2017,05,7)})

    report1009 =user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "non quis incididunt fugiat consequat et voluptate aute dolore anim commodo culpa esse Lorem aliqua",
    created_at: Date.new(2017,05,8)})

    report10010= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "Lorem ea nostrud consectetur aliquip laborum minim nostrud incididunt culpa nostrud occaecat minim et nisi",
    created_at: Date.new(2017,05,9)})

    report10011= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ullamco voluptate fugiat amet cupidatat dolore adipisicing occaecat est esse non exercitation consequat ut excepteur",
    created_at: Date.new(2017,05,10)})

    report10012= user7.reports.find_or_create_by!({
    sentiment: 0,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco Lorem culpa labore qui consequat cupidatat tempor do quis dolore dolore culpa officia ad",
    created_at: Date.new(2017,05,11)})

    report10013= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "labore non adipisicing mollit do et aliquip est dolor dolore cupidatat adipisicing adipisicing amet et",
    created_at: Date.new(2017,05,12)})

    report10014= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "sint nisi aliquip ex qui eu officia aliqua consequat eu dolore eu consequat non amet",
    created_at: Date.new(2017,05,13)})

    report10015= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "aliqua et laborum non nulla cillum consectetur exercitation dolor ex exercitation ut incididunt tempor aute",
    created_at: Date.new(2017,05,14)})

    report10016= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "qui aute id elit cillum proident tempor commodo dolor minim sunt incididunt consectetur incididunt nostrud",
    created_at: Date.new(2017,05,15)})

    report10017= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "consectetur commodo eu in aliqua proident ullamco nisi ad elit veniam reprehenderit aliquip Lorem veniam",
    created_at: Date.new(2017,05,16)})

    report10018= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nulla ea ullamco ullamco in deserunt elit anim est nostrud magna sit sint quis qui",
    created_at: Date.new(2017,05,17)})

    report10019= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "qui fugiat consectetur proident consequat incididunt labore esse occaecat duis sit velit eu tempor nostrud",
    created_at: Date.new(2017,05,18)})

    report10020= user7.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "duis mollit exercitation consectetur magna aute voluptate et elit esse dolor incididunt cillum incididunt qui",
    created_at: Date.new(2017,05,19)})

    report10021= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "cupidatat dolor tempor dolor sint voluptate enim eiusmod voluptate Lorem qui pariatur Lorem laborum qui",
    created_at: Date.new(2017,05,20)})

    report10022= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo pariatur ut incididunt anim commodo sunt et tempor officia mollit in ex non do",
    created_at: Date.new(2017,05,21)})

    report10023= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "reprehenderit non fugiat id non aliqua duis deserunt sint commodo pariatur elit ullamco ipsum do",
    created_at: Date.new(2017,05,22)})

    report10024= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "officia nisi adipisicing pariatur irure quis sit adipisicing proident laboris dolore sit culpa esse nostrud",
    created_at: Date.new(2017,05,23)})

    report10025= user7.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "et Lorem qui qui dolore nulla anim sint reprehenderit anim nostrud sunt officia laborum est",
    created_at: Date.new(2017,05,24)})

    report10026= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "aute anim sint exercitation eiusmod nostrud occaecat ipsum irure voluptate veniam consequat do dolore non",
    created_at: Date.new(2017,05,25)})

    report10027= user7.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "mollit duis cillum commodo mollit et aliqua magna excepteur consequat duis nulla est eiusmod ea",
    created_at: Date.new(2017,05,26)})

    report10028= user7.reports.find_or_create_by!({
    sentiment: 5,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "non commodo non id consectetur et nostrud exercitation non amet adipisicing et anim veniam velit",
    created_at: Date.new(2017,05,27)})

    report10029= user7.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "pariatur anim aliqua ad et et veniam tempor aliquip officia consectetur reprehenderit deserunt ipsum aliquip",
    created_at: Date.new(2017,05,28)})

    report10030= user7.reports.find_or_create_by!({
    sentiment: 5,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "dolore eu dolore fugiat officia sit do irure labore dolore aliqua aliqua irure qui eiusmod",
    created_at: Date.new(2017,05,29)})

    report10031= user7.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo sit laboris pariatur excepteur adipisicing ut duis consectetur id voluptate mollit aliquip pariatur esse",
    created_at: Date.new(2017,05,30)})

    report10032= user7.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "magna officia occaecat ipsum commodo consectetur ea elit duis esse exercitation magna nisi do duis",
    created_at: Date.new(2017,05,31)})

    report10033= user7.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "esse ex adipisicing voluptate enim reprehenderit consectetur exercitation pariatur enim sunt dolor enim do officia",
    created_at: Date.new(2017,06,01)})


    report10034 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ipsum occaecat tempor culpa consectetur cupidatat aliquip minim pariatur ut ut reprehenderit nulla ipsum nostrud",
    created_at: Date.new(2017,04,30)})

    report10035 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ea enim nulla ea laboris aliquip velit quis cillum velit laboris non elit commodo irure",
    created_at: Date.new(2017,05,01)})

    report10036 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "laboris occaecat aute consequat sint tempor aute anim non ex labore sit tempor quis duis",
    created_at: Date.new(2017,05,02)})

    report10037 =user8.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "incididunt nisi veniam in non in aute occaecat sit sint dolore et ad elit quis",
    created_at: Date.new(2017,05,03)})

    report10038 =user8.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ipsum occaecat ullamco cillum ullamco velit nulla duis ipsum voluptate amet dolor amet aute et",
    created_at: Date.new(2017,05,04)})

    report10039 =user8.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 3,
    notes: "duis sit consectetur deserunt dolor aliqua nulla anim eu et do nulla et excepteur enim",
    created_at: Date.new(2017,05,05)})

    report10040 =user8.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "occaecat pariatur proident incididunt esse labore incididunt aliquip veniam minim officia nisi dolor quis ipsum",
    created_at: Date.new(2017,05,06)})

    report10041 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 2,
    notes: "id enim cupidatat commodo incididunt in non tempor reprehenderit ad sint adipisicing occaecat do consectetur",
    created_at: Date.new(2017,05,07)})

    report10042 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "minim aliquip minim Lorem est consectetur ullamco incididunt aliqua voluptate aliqua incididunt consequat laborum mollit",
    created_at: Date.new(2017,05,8)})

    report10043 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "pariatur dolor reprehenderit enim cillum excepteur adipisicing incididunt ipsum in ea ea sint fugiat ullamco",
    created_at: Date.new(2017,05,9)})

    report10044 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "consequat tempor ipsum veniam aute anim fugiat est eu laborum laborum occaecat ea pariatur laboris",
    created_at: Date.new(2017,05,10)})

    report10045 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "ad reprehenderit qui eiusmod nulla qui consectetur voluptate sunt elit nisi aliquip commodo ullamco reprehenderit",
    created_at: Date.new(2017,05,11)})

    report10046 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 1,
    notes: "id nulla sint irure occaecat cillum aliqua exercitation dolor proident est eiusmod consectetur ex culpa",
    created_at: Date.new(2017,05,12)})

    report10047 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 4,
    notes: "ullamco velit ipsum consequat esse consequat nisi consectetur nostrud nulla exercitation qui sunt reprehenderit reprehenderit",
    created_at: Date.new(2017,05,13)})

    report10048 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "magna laborum duis sit minim tempor cupidatat et pariatur ullamco incididunt culpa magna consectetur amet",
    created_at: Date.new(2017,05,14)})

    report10049 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ea ipsum fugiat aliquip ipsum dolore aute pariatur ad ullamco cupidatat cupidatat proident dolore ex",
    created_at: Date.new(2017,05,15)})

    report10050 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ea in magna exercitation irure sint consectetur in est duis laboris veniam incididunt pariatur esse",
    created_at: Date.new(2017,05,16)})

    report10051 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "consectetur nisi ex voluptate aliquip cupidatat minim laboris tempor ipsum id sit laborum eiusmod consectetur",
    created_at: Date.new(2017,05,17)})

    report10052 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 1,
    notes: "commodo quis quis aliquip voluptate aliquip Lorem est sint et esse laboris incididunt enim aliqua",
    created_at: Date.new(2017,05,18)})

    report10053 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "consectetur sit irure amet consectetur aliqua minim consectetur culpa ut labore eiusmod ex occaecat officia",
    created_at: Date.new(2017,05,19)})

    report10054 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "do dolore labore aute minim qui quis veniam dolore irure est aliquip do est nisi",
    created_at: Date.new(2017,05,20)})

    report10055 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "nulla culpa esse labore ipsum Lorem reprehenderit eu sint et ullamco nisi aliquip consectetur fugiat",
    created_at: Date.new(2017,05,21)})

    report10056 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ut proident officia reprehenderit sint fugiat quis sunt aute quis in irure Lorem dolore deserunt",
    created_at: Date.new(2017,05,22)})

    report10057 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "velit aliqua magna deserunt nostrud quis consectetur nisi qui in Lorem eiusmod mollit dolore sint",
    created_at: Date.new(2017,05,23)})

    report10058 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 3,
    notes: "tempor ex officia amet consequat id dolor sunt labore non velit aliquip dolor sint laborum",
    created_at: Date.new(2017,05,24)})

    report10059 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "occaecat ullamco quis ullamco minim nisi amet consectetur ipsum consequat nulla culpa laboris voluptate occaecat",
    created_at: Date.new(2017,05,25)})

    report10060 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "aute do dolor veniam ea eiusmod veniam tempor cupidatat commodo fugiat culpa ipsum duis eiusmod",
    created_at: Date.new(2017,05,26)})

    report10061 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "dolore mollit est dolor cillum tempor aliqua incididunt adipisicing fugiat cillum adipisicing consequat et officia",
    created_at: Date.new(2017,05,27)})

    report10062 =user8.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "labore anim incididunt Lorem eu ex est duis culpa labore ex veniam sunt cupidatat quis",
    created_at: Date.new(2017,05,28)})

    report10063 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eiusmod culpa voluptate ullamco proident aliquip eu deserunt cupidatat id proident amet veniam tempor incididunt",
    created_at: Date.new(2017,05,29)})

    report10064 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nostrud nulla labore voluptate qui commodo minim aliqua occaecat laborum nostrud irure sint incididunt minim",
    created_at: Date.new(2017,05,30)})

    report10065 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolore nostrud quis fugiat qui incididunt officia elit incididunt ullamco labore culpa tempor velit velit",
    created_at: Date.new(2017,05,31)})

    report10066 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "sunt esse ea magna enim occaecat minim amet proident est ullamco ex qui non deserunt",
    created_at: Date.new(2017,06,01)})

    report10067 =user8.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "pariatur sunt consequat excepteur nostrud anim qui consequat eiusmod reprehenderit esse et eiusmod pariatur adipisicing",
    created_at: Date.new(2017,06,02)})


    report10069 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "qui ad commodo occaecat qui laboris est enim consectetur do mollit id minim exercitation sunt",
    created_at: Date.new(2017,04,30)})

    report10070 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "occaecat est ipsum voluptate ea nulla consequat deserunt duis ipsum reprehenderit commodo labore magna minim",
    created_at: Date.new(2017,05,01)})

    report10071 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "consequat proident dolor voluptate nisi mollit fugiat ullamco voluptate id tempor voluptate dolore aute mollit",
    created_at: Date.new(2017,05,02)})

    report10072 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "nisi nostrud eiusmod consectetur aliqua irure fugiat aliquip anim anim exercitation sit aliqua dolor ullamco",
    created_at: Date.new(2017,05,03)})

    report10073 =user9.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ad anim consequat et adipisicing pariatur tempor exercitation exercitation do reprehenderit dolore dolor labore laboris",
    created_at: Date.new(2017,05,04)})

    report10074 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "velit qui laboris exercitation anim velit voluptate irure eiusmod minim id mollit cupidatat quis proident",
    created_at: Date.new(2017,05,05)})

    report10075 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "occaecat aliqua proident cupidatat cupidatat ut Lorem mollit eu cillum in exercitation magna minim qui",
    created_at: Date.new(2017,05,06)})

    report10076 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "sit et sunt veniam enim non aliqua occaecat cupidatat nulla ut et ipsum reprehenderit laboris",
    created_at: Date.new(2017,05,07)})

    report10077 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "velit tempor elit id sunt ut anim cillum quis aliquip sit proident esse deserunt non",
    created_at: Date.new(2017,05,8)})

    report10078 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 2,
    notes: "magna consectetur exercitation cillum irure quis esse amet consequat amet excepteur eu amet nostrud anim",
    created_at: Date.new(2017,05,9)})

    report10079 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "magna mollit eiusmod magna eiusmod elit minim do exercitation quis aliqua Lorem pariatur ad proident",
    created_at: Date.new(2017,05,10)})

    report10080 =user9.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "pariatur ut adipisicing dolore ad qui in deserunt fugiat commodo aute fugiat fugiat veniam adipisicing",
    created_at: Date.new(2017,05,11)})

    report10081 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolor esse aute sint cupidatat Lorem consectetur do cillum irure et esse ut sint eiusmod",
    created_at: Date.new(2017,05,12)})

    report10082 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "minim Lorem ea sit adipisicing ut quis Lorem sint deserunt amet nulla aliquip culpa deserunt",
    created_at: Date.new(2017,05,13)})

    report10083 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "tempor Lorem Lorem nulla consequat excepteur reprehenderit consectetur ea eiusmod sunt culpa adipisicing nulla nulla",
    created_at: Date.new(2017,05,14)})

    report10084 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "adipisicing duis culpa quis exercitation magna ullamco ut esse ipsum aliqua ullamco quis elit laboris",
    created_at: Date.new(2017,05,15)})

    report10085 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "in aliquip laboris quis mollit officia exercitation ipsum dolore aliqua elit enim eiusmod enim anim",
    created_at: Date.new(2017,05,16)})

    report10086 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod ut ullamco duis cupidatat nostrud consequat dolore tempor culpa pariatur eu id magna aute",
    created_at: Date.new(2017,05,17)})

    report10087 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "non dolor ad laboris laboris commodo commodo culpa aute minim veniam qui dolor sint nulla",
    created_at: Date.new(2017,05,18)})

    report10088 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "id magna pariatur cillum cillum ullamco consectetur cupidatat velit nulla culpa occaecat esse ullamco elit",
    created_at: Date.new(2017,05,19)})

    report10089 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eu occaecat laborum in eiusmod do pariatur occaecat ullamco fugiat mollit eu nostrud aliqua incididunt",
    created_at: Date.new(2017,05,20)})

    report10090 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "laboris adipisicing eiusmod anim id ad ea sunt eu elit elit excepteur proident pariatur eiusmod",
    created_at: Date.new(2017,05,21)})

    report10091 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "labore consequat consequat sit cillum tempor adipisicing veniam proident culpa deserunt mollit do excepteur proident",
    created_at: Date.new(2017,05,22)})

    report10092 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "fugiat incididunt ad pariatur est ullamco ad cillum dolore incididunt irure culpa sunt ullamco eiusmod",
    created_at: Date.new(2017,05,23)})

    report10093 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "non dolore excepteur consequat quis in reprehenderit adipisicing id sit velit laboris anim exercitation amet",
    created_at: Date.new(2017,05,24)})

    report10094 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "sunt culpa cupidatat laboris dolore nulla tempor adipisicing in consectetur pariatur aute dolore non cillum",
    created_at: Date.new(2017,05,25)})

    report10095 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "qui culpa labore id adipisicing tempor et duis velit elit nulla anim dolore non elit",
    created_at: Date.new(2017,05,26)})

    report10096 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "quis irure qui laboris proident aliquip voluptate nulla incididunt minim eu cillum ea deserunt id",
    created_at: Date.new(2017,05,27)})

    report10097 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing duis dolor mollit officia esse laboris sint deserunt velit commodo anim quis officia tempor",
    created_at: Date.new(2017,05,28)})

    report10098 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "est duis est aliquip eiusmod fugiat cillum minim consequat ad est consectetur eiusmod reprehenderit mollit",
    created_at: Date.new(2017,05,29)})

    report10099 =user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "consectetur duis nisi amet duis ullamco anim veniam ipsum et ex velit laborum non adipisicing",
    created_at: Date.new(2017,05,30)})

    report100100= user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "nisi est dolore ad velit fugiat enim elit quis tempor sint magna et amet minim",
    created_at: Date.new(2017,05,31)})

    report100101= user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ipsum consectetur voluptate Lorem ea magna voluptate sint incididunt ea duis qui laboris nostrud cupidatat",
    created_at: Date.new(2017,06,01)})

    report100102= user9.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "in sint laborum dolor excepteur sint velit veniam duis id officia sunt qui occaecat exercitation",
    created_at: Date.new(2017,06,02)})


    report100103= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "cupidatat occaecat ex laborum exercitation anim irure magna Lorem mollit consectetur reprehenderit labore aliqua est",
    created_at: Date.new(2017,04,30)})

    report100104= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "mollit est velit deserunt duis eiusmod consectetur eu dolor dolor sunt velit est cillum officia",
    created_at: Date.new(2017,05,01)})

    report100105= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "reprehenderit consectetur ex est laborum id minim non cupidatat commodo occaecat sunt mollit reprehenderit laborum",
    created_at: Date.new(2017,05,02)})

    report100106= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "incididunt culpa proident aliquip in culpa minim aliquip anim nostrud pariatur incididunt cillum proident amet",
    created_at: Date.new(2017,05,03)})

    report100107= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor commodo non consequat sunt mollit id officia ullamco eu non do magna reprehenderit duis",
    created_at: Date.new(2017,05,04)})

    report10018= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "deserunt nulla occaecat elit ea Lorem eu labore cillum aliqua qui labore consequat proident aute",
    created_at: Date.new(2017,05,05)})

    report10019= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ea eu eu nisi labore labore duis non pariatur deserunt ipsum exercitation nisi ex in",
    created_at: Date.new(2017,05,06)})

    report100110= user10.reports.find_or_create_by!({

    meetings: false,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "Lorem tempor consequat et pariatur tempor voluptate do sint elit nulla ullamco laborum ad nisi",
    created_at: Date.new(2017,05,07)})

    report100111= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing et enim dolore eu adipisicing sunt aute mollit excepteur deserunt occaecat nostrud occaecat fugiat",
    created_at: Date.new(2017,05,8)})

    report100112= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod dolor elit non ullamco aute elit cupidatat irure do quis ipsum nostrud laboris pariatur",
    created_at: Date.new(2017,05,9)})

    report100113= user10.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "nostrud ipsum anim occaecat elit excepteur occaecat nisi veniam duis voluptate consectetur consequat eiusmod duis",
    created_at: Date.new(2017,05,10)})

    report100114= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "minim dolore aliqua exercitation aliquip laboris irure laboris velit deserunt nisi adipisicing excepteur veniam anim",
    created_at: Date.new(2017,05,11)})

    report100115= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "reprehenderit ipsum ea commodo esse ex culpa qui irure cillum commodo laborum commodo dolor minim",
    created_at: Date.new(2017,05,12)})

    report100116= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "esse commodo qui id sit proident minim irure pariatur est quis aliquip aute mollit do",
    created_at: Date.new(2017,05,13)})

    report100117= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "aute anim Lorem Lorem ut cupidatat pariatur nostrud dolor minim elit ullamco nisi elit excepteur",
    created_at: Date.new(2017,05,14)})

    report100118= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: true,
    weeks_homeless: 3,
    notes: "sint culpa ex do amet minim reprehenderit nostrud minim aute sint labore velit excepteur est",
    created_at: Date.new(2017,05,15)})

    report100119= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 1,
    notes: "in aliquip occaecat adipisicing ipsum eu nostrud deserunt adipisicing sunt laboris esse qui labore ex",
    created_at: Date.new(2017,05,16)})

    report100120= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 3,
    notes: "dolor duis excepteur laboris anim magna id cillum nulla non nostrud sint culpa occaecat ea",
    created_at: Date.new(2017,05,17)})

    report100121= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "tempor sint et voluptate in dolor officia cillum anim esse mollit reprehenderit qui non amet",
    created_at: Date.new(2017,05,18)})

    report100122= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "reprehenderit reprehenderit duis exercitation ad nisi irure in minim ullamco fugiat anim et esse sit",
    created_at: Date.new(2017,05,19)})

    report100123= user10.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "Lorem velit proident sit nulla culpa qui laborum est excepteur magna veniam labore dolor nisi",
    created_at: Date.new(2017,05,20)})

    report100124= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "non reprehenderit id proident eiusmod culpa quis eu sit labore mollit adipisicing consectetur do officia",
    created_at: Date.new(2017,05,21)})

    report100125= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aliqua officia magna irure est ullamco commodo sit cillum adipisicing labore quis ullamco amet reprehenderit",
    created_at: Date.new(2017,05,22)})

    report100126= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "nulla dolor nisi nostrud Lorem dolor incididunt non labore anim deserunt aute ullamco est minim",
    created_at: Date.new(2017,05,23)})

    report100127= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "esse exercitation dolore veniam ullamco veniam aliqua elit aliqua commodo voluptate fugiat sit occaecat fugiat",
    created_at: Date.new(2017,05,24)})

    report100128= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "culpa aliquip aute laborum minim ex veniam cupidatat quis incididunt nostrud eu culpa consectetur cupidatat",
    created_at: Date.new(2017,05,25)})

    report100129= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "esse quis deserunt anim nostrud laborum Lorem aute reprehenderit proident exercitation ad voluptate cillum id",
    created_at: Date.new(2017,05,26)})

    report100130= user10.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ad qui ad et commodo laboris non velit velit minim nisi labore do velit sint",
    created_at: Date.new(2017,05,27)})

    report100131= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "tempor in excepteur ad nostrud ea nostrud voluptate ullamco aute amet culpa aliquip et laboris",
    created_at: Date.new(2017,05,28)})

    report100132= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "do quis mollit est ex magna minim veniam qui irure sit labore amet mollit exercitation",
    created_at: Date.new(2017,05,29)})

    report100133= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "excepteur exercitation excepteur culpa consectetur tempor Lorem mollit aliqua quis officia irure est est magna",
    created_at: Date.new(2017,05,30)})

    report100134= user10.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "occaecat labore adipisicing enim qui esse eiusmod non laborum et magna ad ex culpa sit",
    created_at: Date.new(2017,05,31)})

    report100135= user10.reports.find_or_create_by!({

    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "enim Lorem elit est ad Lorem incididunt ea in et elit qui labore pariatur esse",
    created_at: Date.new(2017,06,01)})

    report100136= user10.reports.find_or_create_by!({

    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "irure nostrud pariatur ut exercitation proident reprehenderit est deserunt proident eiusmod veniam est sint culpa",
    created_at: Date.new(2017,06,02)})  