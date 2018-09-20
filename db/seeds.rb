# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.delete_all

User.delete_all
ApplicationRecord.connection.reset_pk_sequence!('houses')
ApplicationRecord.connection.reset_pk_sequence!('users')

Review.delete_all
User.delete_all
ApplicationRecord.connection.reset_pk_sequence!('houses')
ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('reviews')


User.create!(
  username: "Blake Z",
  password: "12345678"
)

User.create!(
  username: "Liming K",
  password: "12345678"
)

User.create!(
  username: "David S",
  password: "12345678"
)

User.create!(
  username: "Brian S",
  password: "12345678"
)

User.create!(
  username: "Jackson W",
  password: "12345678"
)

User.create!(
  username: "Andrew L",
  password: "12345678"
)

User.create!(
  username: "Kyle S",
  password: "12345678"
)

User.create!(
  username: "Selena G",
  password: "12345678"
)

User.create!(
  username: "Justin T",
  password: "12345678"
)

User.create!(
  username: "Duncan D",
  password: "12345678"
)

User.create!(
  username: "John W",
  password: "12345678"
)

User.create!(
  username: "Sonali S",
  password: "12345678"
)

User.create!(
  username: "Howie C",
  password: "12345678"
)

User.create!(
  username: "Kevin Y",
  password: "12345678"
)

User.create!(
  username: "Ryan S",
  password: "12345678"
)

User.create!(
  username: "David P",
  password: "12345678"
)

User.create!(
  username: "Benji B",
  password: "12345678"
)

User.create!(
  username: "Jake J",
  password: "12345678"
)

User.create!(
  username: "Drewby S",
  password: "12345678"
)

User.create!(
  username: "Dan K",
  password: "12345678"
)

User.create!(
  username: "Karishma K",
  password: "12345678"
)

User.create!(
  username: "Caleb W",
  password: "12345678"
)


House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 200,
  title: 'Yosemite gateway chalet',
  lat: 37.7636023,
  lng: -119.1085565,
  pic_url: 'http://yosemitegatewaychalet.com/wp-content/uploads/2014/04/yosemite_gateway_chalet_june_mammoth_lake_rental_vacation_home_slide_1.jpg',
  address: "Yosemite, CA"
)

House.create!(
  description: 'Planning a romantic getaway to Yosemite? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Yosemite.',
  host_name: 'Mark Z',
  host_url: 'https://specials-images.forbesimg.com/imageserve/59d5062131358e542c034eb7/416x416.jpg?background=000000&cropX1=419&cropX2=1409&cropY1=53&cropY2=1044',
  price: 1250,
  title: 'Four seasons',
  lat: 37.7631382,
  lng: -119.1075204,
  pic_url: 'https://yosemitepinesrv.com/images/lodging/premium-loft-4.jpg',
  address: "Yosemite, CA"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Yosemite!",
  host_name: 'Elon M',
  host_url: 'https://c.ndtvimg.com/0oa29prs_elon-musk-tesla-reuters_625x300_13_August_18.jpg?output-quality=70&output-format=webp',
  price: 100,
  title: 'Yosemite Forest Lodge',
  lat: 37.6423375,
  lng: -119.0034716,
  pic_url: 'https://www.visitcalifornia.com/sites/default/files/styles/welcome_image/public/VCW_D_Yosemite_T5_HS_Yosemite_Awahnee_horz_KG_1280x642.jpg',
  address: "Yosemite, CA"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Jeff B',
  host_url: 'https://financialpostcom.files.wordpress.com/2014/10/jeff-bezos-amazon.jpg',
  price: 675,
  title: 'Little Ahwahnee Inn',
  lat: 37.4775974,
  lng: -119.6387045,
  pic_url: 'https://a0.muscache.com/im/pictures/ff01b006-f6ad-4ebb-b384-6643af1ed174.jpg?aki_policy=xx_large',
  address: "Yosemite, CA"
)

# Yosemite done!

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Bill G',
  host_url: 'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg',
  price: 7400,
  title: 'Yellowstone Club',
  lat: 44.7338412,
  lng: -110.4986803,
  pic_url: 'http://yellowstoneclub.com/wp-content/uploads/ewpt_cache/370x250_100_1_c_FFFFFF_7dbda9be9cafaf91332cfdcb100ebccb_15.jpg',
  address: "Yellowstone, WY"
)

House.create!(
  description: 'Planning a romantic getaway to Yellowstone? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Yellowstone.',
  host_name: 'Larry P',
  host_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Larry_Page_in_the_European_Parliament%2C_17.06.2009_%28cropped%29.jpg/220px-Larry_Page_in_the_European_Parliament%2C_17.06.2009_%28cropped%29.jpg',
  price: 850,
  title: 'Centre Sky',
  lat: 44.7249994,
  lng: -110.7122699,
  pic_url: 'http://centresky.com/wp-content/uploads/2016/10/2.jpg',
  address: "Yellowstone, WY"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Yellowstone!",
  host_name: 'Tim C',
  host_url: 'https://pbs.twimg.com/profile_images/1035649273721847809/B0f8n_oe.jpg',
  price: 600,
  title: 'Rainbow Lodge Remodel',
  lat: 44.4182434,
  lng: -110.5803911,
  pic_url: 'http://centresky.com/wp-content/uploads/2016/05/21.jpg',
  address: "Yellowstone, WY"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Mary B',
  host_url: 'https://specials-images.forbesimg.com/imageserve/59f23fe731358e542c044d85/416x416.jpg?background=000000&cropX1=731&cropX2=3097&cropY1=223&cropY2=2587',
  price: 275,
  title: 'Brokoks Lake Lodge',
  lat: 44.5015582,
  lng: -110.0193159,
  pic_url: 'http://www.brookslake.com/wp-content/uploads/2016/11/brooks-lake-lodge-lobby.jpg',
  address: "Yellowstone, WY"
)

# Yellowstone

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Meg W',
  host_url: 'https://ids.uni.edu/becomingbusiness/files/2018/04/meg-whitman-profile-770x450.jpg',
  price: 1400,
  title: 'Odis Club',
  lat: 35.6908104,
  lng: -83.5355896,
  pic_url: 'https://odis.homeaway.com/odis/listing/9421132c-34b1-4ebc-a98a-c0e34394534c.c10.jpg',
  address: "Great smoky mountin, NC"
)

House.create!(
  description: 'Planning a romantic getaway to Great Smoky? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Great Smoky.',
  host_name: 'Jack D',
  host_url: 'https://specials-images.forbesimg.com/imageserve/59de682a4bbe6f37dda0566e/416x416.jpg?background=000000&cropX1=995&cropX2=2729&cropY1=78&cropY2=1813',
  price: 2250,
  title: 'Great smoky cabin',
  lat: 35.7038799,
  lng: -83.5319418,
  pic_url: 'https://www.czmcam.org/wp-content/uploads/2017/02/Luxury-mountain-homes-colorado-exterior-rustic-with-stone-wall-mountain-house-stone-exterior-2.jpg',
  address: "Great smoky mountin, NC"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Great Smoky!",
  host_name: 'Anakin S',
  host_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Anakin-Jedi.jpg/220px-Anakin-Jedi.jpg',
  price: 150,
  title: 'Edoctorradio cabin',
  lat: 35.5194197,
  lng: -83.3222574,
  pic_url: 'http://www.edoctorradio.com/wp-content/uploads/2017/05/Luxury-Mountain-Home-Plans1-768x576.jpg',
  address: "Great smoky mountin, NC"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Luke S',
  host_url: 'https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg/revision/latest?cb=20170927034529',
  price: 1075,
  title: 'Inspirational cabin',
  lat: 35.5200135,
  lng: -83.2957787,
  pic_url: 'http://frit-fond.com/wp-content/uploads/2018/08/beautiful-18-inspirational-mountain-cabin-home-plans-home-plans-home-plans-mountain-home-house-plans-of-mountain-home-house-plans.jpg',
  address: "Great smoky mountin, NC"
)
# great smoky

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Leia O',
  host_url: 'https://i.ebayimg.com/images/g/cBMAAOSw44BYZGiJ/s-l300.jpg',
  price: 9900,
  title: 'Patagonia love',
  lat: -51.0186614,
  lng: -73.1306596,
  pic_url: 'http://www.southwindadventures.com/wp-content/uploads/2016/03/explora-Patagonia-in-winter-snowy-mountains-Patagonia-Chile-mgv27ip9r3dyd5xlbgq7koco9dqkhd93f1mcwh7rt4.jpg',
  address: "Torres del Pain, Chile"
)

House.create!(
  description: 'Planning a romantic getaway to Torres Del Paine? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Torres Del Paine.',
  host_name: 'Chewbacca',
  host_url: 'https://vignette.wikia.nocookie.net/starwars/images/4/48/Chewbacca_TLJ.png/revision/latest?cb=20171231005834',
  price: 650,
  title: 'Zicasso',
  lat: -51.062699,
  lng: -73.1426759,
  pic_url: 'https://www.zicasso.com/sites/default/files/styles/original_scaled_down/public/photos/tour/lake_pehoe_torres_del_paine_national_park_patagonia_chile.jpg',
  address: "Torres del Pain, Chile"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Torres Del Paine!",
  host_name: 'R2',
  host_url: 'https://store.storeimages.cdn-apple.com/4981/as-images.apple.com/is/image/AppleInc/aos/published/images/H/LH/HLHZ2/HLHZ2?wid=572&hei=572&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1502925951728',
  price: 200,
  title: 'Torres cabin',
  lat: -51.0555781,
  lng: -72.9998537,
  pic_url: 'https://www.jetsetter.com/uploads/sites/7/2018/04/h-PooSFA-1380x690.jpeg',
  address: "Torres del Pain, Chile"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Iron M',
  host_url: 'https://ia.media-imdb.com/images/M/MV5BMTI5ODY5NTUzMF5BMl5BanBnXkFtZTcwOTAzNTIzMw@@._CR3,34,1865,1397_UX614_UY460._SY230_SX307_AL_.jpg',
  price: 1275,
  title: 'San Matin cabin',
  lat: -50.970042,
  lng: -72.9462953,
  pic_url: 'https://images.gabrielstechnology.com/reno/imagereader.aspx?imageurl=http%3A%2F%2FRealestateAdminImages.gabriels.net%2F170%2F78116%2F170-2016052417151403-115.jpg&option=N&w=640&permitphotoenlargement=false',
  address: "Torres del Pain, Chile"
)

# Torres del Paine

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Captain A',
  host_url: 'https://uproxx.files.wordpress.com/2018/03/captain-america.jpg?quality=95&w=650',
  price: 900,
  title: 'Teton village',
  lat: 43.687295,
  lng: -110.7695799,
  pic_url: 'https://pictures.escapia.com/CLCRGR/3999030664.jpg',
  address: "Grand Teton, WY"
)

House.create!(
  description: 'Planning a romantic getaway to Grand Canyon? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Grand Canyon.',
  host_name: 'Black W',
  host_url: 'https://am22.akamaized.net/tms/cnt/uploads/2018/05/black-widow-scarlett-johansson-marvel-the-avengers-1200x752.jpg',
  price: 2250,
  title: 'Jackson cabin',
  lat: 43.6142611,
  lng: -110.810092,
  pic_url: 'https://pictures.escapia.com/CLCRGR/6915270461.jpg',
  address: "Grand Teton, WY"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Grand Teton!",
  host_name: 'Thor',
  host_url: 'https://img.jakpost.net/c/2017/10/25/2017_10_25_34644_1508914269._large.jpg',
  price: 900,
  title: 'Ranch View village',
  lat: 43.6579927,
  lng: -110.7616835,
  pic_url: 'https://pictures.escapia.com/CLCRGR/6346010567.jpg',
  address: "Grand Teton, WY"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Jack D',
  host_url: 'https://mediaslide-europe.storage.googleapis.com/success/pictures/2784/6700/large-1515419345-f30817cb31e089ee83dcc874af4611ee.jpg',
  price: 675,
  title: 'Teton villa',
  lat: 43.8085731,
  lng: -110.735591,
  pic_url: 'https://robbreportedit.files.wordpress.com/2016/08/aspensong_exterior_021.jpg?w=1024',
  address: "Grand Teton, WY"
)

# Grand Teton

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Nepel!",
  host_name: 'Shawn S',
  host_url: 'https://static.sourcemodels.co.uk/media_373/Calum%20Cichon%2FCallum%20Cichon13066.jpg',
  price: 100,
  title: 'Everest heart',
  lat: 27.9478098,
  lng: 86.7416836,
  pic_url: 'http://snowcattravel.com/communities/5/004/013/299/685//images/4631934035.jpg',
  address: "Nepel"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Teddy W',
  host_url: 'https://i1.wp.com/www.istikharawazifa.com/wp-content/uploads/2017/12/Baptiste-Giabiconi-French-male-model-closermag.fr_.jpg?fit=800%2C600',
  price: 975,
  title: 'Everest view villa',
  lat: 27.918084,
  lng: 86.6575695,
  pic_url: 'https://www.lifehimalayatrekking.com/pagegallery/everest-in-luxury-trek67.jpg',
  address: "Nepel"
)

#Nepal

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Diana F',
  host_url: 'https://i.ytimg.com/vi/oCmJMVPZCvI/maxresdefault.jpg',
  price: 400,
  title: 'Calvis Wyant',
  lat: 33.6707599,
  lng: -111.8762567,
  pic_url: 'https://www.calviswyant.com/wp-content/uploads/2014/07/10-041-02-Rear-Ext-EDIT1.jpg',
  address: "Grand Canyon, AZ"
)

House.create!(
  description: 'Planning a romantic getaway to Grand Canyon? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Grand Canyon.',
  host_name: 'Meddy B',
  host_url: 'https://media.gettyimages.com/photos/studio-shot-of-young-beautiful-woman-picture-id610576696?b=1&k=6&m=610576696&s=612x612&w=0&h=m7bq0l1ogV_uaHdypXdEMf3bd1jdH72kYe7xoPQqXdM=',
  price: 1250,
  title: 'Canyon view',
  lat: 33.6610804,
  lng: -111.8623521,
  pic_url: 'https://www.prlog.org/12264559-north-scottsdale-arizona-coldwell-banker-luxury-real-estate-480-323-5365.jpg',
  address: "Grand Canyon, AZ"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Grand Canyon!",
  host_name: 'Queen B',
  host_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL3dl3hBMVTHkgBxQt5AGIa3JKHaRfrYPLmk7ZMx7yFrpQrKtf',
  price: 500,
  title: 'Foothills lodge',
  lat: 33.631151,
  lng: -111.8288782,
  pic_url: 'https://www.arizonafoothillsmagazine.com/in-house/wp-content/uploads/001_Dramatic-Architecture.jpg',
  address: "Grand Canyon, AZ"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Patrick F',
  host_url: 'https://s3.amazonaws.com/images.gearjunkie.com/uploads/2017/03/7-mantras-for-climbing-big-mountains-holly-budge-1.jpg',
  price: 875,
  title: 'Boulder Crest villa',
  lat: 33.6538736,
  lng: -111.8699052,
  pic_url: 'https://www.troonrealestate.com/wp-content/uploads/2010/04/Troon-Mountain-Luxury-Home.jpg',
  address: "Grand Canyon, AZ"
)

# Grand Canyon

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 5400,
  title: 'Matakauri Lodge',
  lat: -45.0700589,
  lng: 169.5065059,
  pic_url: 'https://travel.home.sndimg.com/content/dam/images/travel/fullset/2014/08/11/d7/new-zealand-hotels-ss-matakauri-lodge-009.rend.hgtvcom.966.644.suffix/1491585033408.jpeg',
  address: "South island, New Zealand"
)

House.create!(
  description: 'Planning a romantic getaway to South Island? Lucky you! With stunning vistas and wild beauty, few places kindle romance like South Island.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 1250,
  title: 'Blanket Bay Lodge',
  lat: -45.0406832,
  lng: 169.6941163,
  pic_url: 'https://www.lodgesofnz.co.nz/assets/Uploads/Blanket-Bay-Lodge-Glenorchy-New-Zealand-LR.jpg',
  address: "South island, New Zealand"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in South Island!",
  host_name: 'Judias G',
  host_url: 'https://media.gettyimages.com/photos/mountain-climber-on-rock-picture-id537268729',
  price: 300,
  title: 'Stone Villa',
  lat: -45.2665414,
  lng: 170.3658864,
  pic_url: 'https://www.lodgesofnz.co.nz/assets/Uploads/_resampled/FillWyIxOTAzIiwiNjQwIl0/Stone-Fly-Lodge-New-Zealand-LR.jpg',
  address: "South island, New Zealand"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 375,
  title: 'Lake villa',
  lat: -45.394254,
  lng: 169.7927398,
  pic_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvE4CyMnClDL_fduG8pjlCyQy42SC6cMR-OTYEqjlS0tXbZ8XhIg',
  address: "South island, New Zealand"
)

# south island

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 1400,
  title: 'Isle blue',
  lat: 44.8740686,
  lng: 15.6172025,
  pic_url: 'https://manage.isleblue.co/uploads/villas/images/4090/new-zealand-villa-lodge-at-hills-2017-010.jpg',
  address: "Plitvice Lake, Croatia"
)

House.create!(
  description: 'Planning a romantic getaway to Plitvice? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Plitvice.',
  host_name: 'Zara Mickey',
  host_url: 'http://www.pafamilysafety.com/wp-content/uploads/2013/06/PHOTO-Hiker-on-Mountain.jpg',
  price: 250,
  title: 'Lake Bay Lodge',
  lat: 44.8831307,
  lng: 15.6055295,
  pic_url: 'https://backroads-web.s3.amazonaws.com/images/trips/2019/slideshows/top/BDCS-venice-croatia-ocean-cruise-bike-tour-3.jpg',
  address: "Plitvice Lake, Croatia"
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Plitvice!",
  host_name: 'Jim Baker',
  host_url: 'https://www.gohikeit.com/wp-content/uploads/2015/04/hiker-selfie-saddleback-mountain-hiking-trail.jpg',
  price: 600,
  title: 'Villa Argemonia',
  lat: 44.8968125,
  lng: 15.5918395,
  pic_url: 'https://mobilepics.luxuryretreats.com/mediastock/med/600x352/1/121/120500_Croatia_VillaArgemonia_02.jpg',
  address: "Plitvice Lake, Croatia"
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://www.rei.com/content/dam/images/Expert%20Advice/Migration/HeroImages/Vagnini_091316_0373_Main_lg.jpg',
  price: 775,
  title: 'Plitvice villa',
  lat: 44.9093665,
  lng: 15.5939853,
  pic_url: 'https://www.elegantresorts.co.uk/WebImages/ImageStore1/108974.jpg',
  address: "Plitvice Lake, Croatia"
)
#Plitvice Lake

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Claire K',
  host_url: 'https://s22409.pcdn.co/wp-content/uploads/2017/06/Chief-Mtn-2_cook-960x720.jpg',
  price: 400,
  title: 'Schwarzsee Hotel',
  lat: 45.9858636,
  lng: 7.6325739,
  pic_url: 'https://mobilepics.luxuryretreats.com/mediastock/med/600x352/1/113/112785_swissalps_heinzjulienpenthouse_01.jpg',
  address: "Matterhorn, Switzerland",
)

House.create!(
  description: 'Planning a romantic getaway to Matterhorn? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Matterhorn.',
  host_name: 'Zara Mickey',
  host_url: 'http://stepzapp.com/blog/wp-content/uploads/beginners-guide-to-hiking.jpg',
  price: 250,
  title: 'Hornli Hut',
  lat: 45.9788258,
  lng: 7.6365221,
  pic_url: 'https://blog1.fkimg.com/wp-content/uploads/2016/04/Luxury-Lake-Houses-Queenstown-2.jpg',
  address: "Matterhorn, Switzerland",
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Matterhorn!",
  host_name: 'Disel P',
  host_url: 'http://storage.torontosun.com/v1/dynamic_resize/sws_path/suns-prod-images/1297999004111_ORIGINAL.jpg?size=520x',
  price: 100,
  title: 'Rifugio Duca degli Abruzzi',
  lat: 45.963972,
  lng: 7.6432169,
  pic_url: 'https://i.dailymail.co.uk/i/pix/2014/10/23/1414058000854_wps_26_AX9GY4_jpg.jpg',
  address: "Matterhorn, Switzerland",
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Susan P',
  host_url: 'https://www.insurechance.com/wp-content/uploads/2015/05/MountainClimber.jpg',
  price: 275,
  title: 'Carrel Rifugio',
  lat: 45.976589,
  lng: 7.6496971,
  pic_url: 'https://images.gabrielstechnology.com/reno/imagereader.aspx?imageurl=http%3A%2F%2Fm.sothebysrealty.com%2F1050i215%2Fmddx39r423pymkpbcaawqw4c55i215&option=N&idclient=180&idlisting=180-l-871-33qkx2&w=480&permitphotoenlargement=false',
  address: "Matterhorn, Switzerland",
)

# Matterhorn

Review.create!(
  body: "I cannot rave enough about this beautiful space! Blake was a fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating: 5,
  house_id: 1,
  author_id: 1
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:5,
  house_id: 2,
  author_id: 1
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:4,
  house_id: 13,
  author_id: 21
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:5,
  house_id: 38,
  author_id: 16
)

Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:4,
  house_id: 2,
  author_id: 4
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating: 5,
  house_id: 34,
  author_id: 17
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:5,
  house_id: 23,
  author_id: 1
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:4,
  house_id: 24,
  author_id: 2
)

Review.create!(
  body:"A wonderful, beautiful and peaceful retreat. The pool, tennis court, ping pong table, & hammock were nice additions, but they key to us was the gorgeous layout of the land, the garden, the stone architecture around, and the overall sense of calm. Would definitely want to come back. Note: Bring mosquito repellent for outside, as there are a few in the garden during the summer months (none inside, which is perfectly safe). You should also expect to disconnect from the Internet as there is no Wifi in the room itself, just the common areas.",
  rating:4,
  house_id: 24,
  author_id: 6
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:4,
  house_id: 36,
  author_id: 1
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:4,
  house_id: 17,
  author_id: 17
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:5,
  house_id: 21,
  author_id: 12
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:4,
  house_id: 20,
  author_id: 20
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating: 5,
  house_id: 15,
  author_id: 7
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:5,
  house_id: 14,
  author_id: 9
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:4,
  house_id: 35,
  author_id: 21
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:4,
  house_id: 34,
  author_id: 22
)


Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:5,
  house_id: 10,
  author_id: 10
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:5,
  house_id: 9,
  author_id: 8
)

Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:5,
  house_id: 8,
  author_id: 9
)

Review.create!(
  body: "A wonderful, beautiful and peaceful retreat. The pool, tennis court, ping pong table, & hammock were nice additions, but they key to us was the gorgeous layout of the land, the garden, the stone architecture around, and the overall sense of calm. Would definitely want to come back. Note: Bring mosquito repellent for outside, as there are a few in the garden during the summer months (none inside, which is perfectly safe). You should also expect to disconnect from the Internet as there is no Wifi in the room itself, just the common areas.",
  rating:4,
  house_id: 3,
  author_id: 3
)


Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:5,
  house_id: 4,
  author_id: 4
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:5,
  house_id: 5,
  author_id: 5
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:4,
  house_id: 6,
  author_id: 7
)

Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating: 5,
  house_id: 6,
  author_id: 4
)


Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating: 4,
  house_id: 6,
  author_id: 5
)

Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:4,
  house_id: 2,
  author_id: 18
)

Review.create!(
  body: "I cannot rave enough about this beautiful space! Fantastic host, providing us very detailed directions about his place and recommendations for food around Edinburgh that we may not have found ourselves. The apartment is stunning, with fascinating pieces and books everywhere, while still being very comfortable and welcoming with an amazing view. Wish we could have stayed longer and will certainly be back!",
  rating:5,
  house_id: 18,
  author_id: 2
)



Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:5,
  house_id: 19,
  author_id: 19
)


Review.create!(
  body: "Amazing property! I was just excited about the tree house but the property itself is amazing!!! Everyone we encountered was very nice. Teresa the house keeper was so accommodating and answered all of our questions. I definitely recommend this location for a unique getaway. Just make sure you don’t schedule too much like we did. Leave yourself time to experience the grounds. By the way watching the sunrise from bed is amazing!!!!",
  rating:4,
  house_id: 21,
  author_id: 20
)

Review.create!(
  body: "A wonderful, beautiful and peaceful retreat. The pool, tennis court, ping pong table, & hammock were nice additions, but they key to us was the gorgeous layout of the land, the garden, the stone architecture around, and the overall sense of calm. Would definitely want to come back. Note: Bring mosquito repellent for outside, as there are a few in the garden during the summer months (none inside, which is perfectly safe).",
  rating:5,
  house_id: 12,
  author_id: 14
)
Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:5,
  house_id: 13,
  author_id: 13
)

Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:5,
  house_id: 25,
  author_id: 1
)

Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:5,
  house_id: 14,
  author_id: 1
)


Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:4,
  house_id: 27,
  author_id: 1
)

Review.create!(
  body: "The best air bnb experience we have had to far, and all of our experiences have been positive. This flat is above and beyond and you have to see it in person to believe how gorgeous it really is. Absolute heaven.",
  rating:5,
  house_id: 24,
  author_id: 2
)

Review.create!(
  body: "He was there whenever we needed anything and was very helpful. He made sure to stay in contact with us throughout our stay. The neighborhood was very cute and safe.",
  rating: 5,
  house_id: 1,
  author_id: 8
)

Review.create!(
  body: "Such a beautiful and secluded space with unreal views. Only a short walk to a couple or great cafes and breakfast spots, and short drive to the city center. Blake was super responsive and checked on us often. Recommended to anyone!",
  rating: 5,
  house_id: 1,
  author_id: 12
)

Review.create!(
  body: "Blake's place was lovely, spectacular views and such a perfect location!",
  rating: 5,
  house_id: 1,
  author_id: 13
)

Review.create!(
  body: "One of my favorite airbnbs I've stayed at yet! Blake's place is absolutely beautiful. Amazing views inside & out. Blake was super accommodating and awesome!!! He helped us with everything we asked about - even when he was sick! :)",
  rating: 5,
  house_id: 1,
  author_id: 16
)

Review.create!(
  body: "Great spot; incredible space and views, and Blake was extremely helpful and responsive the whole time. Would absolutely stay here again.",
  rating: 5,
  house_id: 1,
  author_id: 17
)

Review.create!(
  body: "Amazing stay in a stellar location",
  rating: 5,
  house_id: 1,
  author_id: 21
)

Review.create!(
  body: "The views from this listing are incredible! Blake is an attentive host and was very easy to work with. The space is comfortable and beautiful and the A/C was a definite plus for the hot days. The best part is the amazing view! It’s also within walking distance to some cute restaurants and a quick uber ride to the city center. We would definitely stay here again!",
  rating: 5,
  house_id: 1,
  author_id: 20
)

Review.create!(
  body: "The place was just as it looked in photos- really nice space and gorgeous views. Blake was super accommodating to our changing schedule. Would highly recommend.",
  rating: 5,
  house_id: 1,
  author_id: 9
)

Review.create!(
  body: "Certainly recommend staying here. Amazing views of the mountains and very close to the highway for easy access to everything the Yosemite has to offer. An absolute pleasure!",
  rating: 5,
  house_id: 1,
  author_id: 10
)

Review.create!(
  body: "This is one of the best AirBnbs we've ever stayed in. From the magical setting in olive groves to the view of the Tuscan hillside, this is a fantastic, romantic getaway! ",
  rating: 5,
  house_id: 1,
  author_id: 11
)

Review.create!(
  body: "I hesitate to write such a glowing review because I don't want the secret of this place to get out, but I can't help it. The treehouse at Casa Barthel is amazing. It's cozy, so don't expect a ton of space, and the bathroom doesn't provide much privacy if you're sharing the space with a partner, but other than that, this is the dream scenario for an AirBnB.",
  rating: 5,
  house_id: 1,
  author_id: 12
)

Review.create!(
  body: "Amazing stay in a stellar location",
  rating: 5,
  house_id: 31,
  author_id: 21
)

Review.create!(
  body: "The views from this listing are incredible! Blake is an attentive host and was very easy to work with. The space is comfortable and beautiful and the A/C was a definite plus for the hot days. The best part is the amazing view! It’s also within walking distance to some cute restaurants and a quick uber ride to the city center. We would definitely stay here again!",
  rating: 5,
  house_id: 38,
  author_id: 20
)

Review.create!(
  body: "The place was just as it looked in photos- really nice space and gorgeous views. Blake was super accommodating to our changing schedule. Would highly recommend.",
  rating: 5,
  house_id: 37,
  author_id: 9
)

Review.create!(
  body: "Certainly recommend staying here. Amazing views of the mountains and very close to the highway for easy access to everything the Yosemite has to offer. An absolute pleasure!",
  rating: 5,
  house_id: 8,
  author_id: 10
)

Review.create!(
  body: "This is one of the best AirBnbs we've ever stayed in. From the magical setting in olive groves to the view of the Tuscan hillside, this is a fantastic, romantic getaway! ",
  rating: 5,
  house_id: 7,
  author_id: 11
)

Review.create!(
  body: "I hesitate to write such a glowing review because I don't want the secret of this place to get out, but I can't help it. The treehouse at Casa Barthel is amazing. It's cozy, so don't expect a ton of space, and the bathroom doesn't provide much privacy if you're sharing the space with a partner, but other than that, this is the dream scenario for an AirBnB.",
  rating: 5,
  house_id: 6,
  author_id: 12
)
