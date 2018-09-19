# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.delete_all
ApplicationRecord.connection.reset_pk_sequence!('houses')


House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 200,
  title: 'Yosemite gateway chalet',
  lat: 37.7636023,
  lng: -119.1085565,
  pic_url: 'http://yosemitegatewaychalet.com/wp-content/uploads/2014/04/yosemite_gateway_chalet_june_mammoth_lake_rental_vacation_home_slide_1.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Yosemite? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Yosemite.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 1250,
  title: 'Four seasons',
  lat: 37.7631382,
  lng: -119.1075204,
  pic_url: 'https://yosemitepinesrv.com/images/lodging/premium-loft-4.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Yosemite!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 100,
  title: 'Yosemite Forest Lodge',
  lat: 37.6423375,
  lng: -119.0034716,
  pic_url: 'https://www.visitcalifornia.com/sites/default/files/styles/welcome_image/public/VCW_D_Yosemite_T5_HS_Yosemite_Awahnee_horz_KG_1280x642.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 675,
  title: 'Little Ahwahnee Inn',
  lat: 37.4775974,
  lng: -119.6387045,
  pic_url: 'https://a0.muscache.com/im/pictures/ff01b006-f6ad-4ebb-b384-6643af1ed174.jpg?aki_policy=xx_large'
)

# Yosemite done!

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 7400,
  title: 'Yellowstone Club',
  lat: 44.7338412,
  lng: -110.4986803,
  pic_url: 'http://yellowstoneclub.com/wp-content/uploads/ewpt_cache/370x250_100_1_c_FFFFFF_7dbda9be9cafaf91332cfdcb100ebccb_15.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Yellowstone? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Yellowstone.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 850,
  title: 'Centre Sky',
  lat: 44.7249994,
  lng: -110.7122699,
  pic_url: 'http://centresky.com/wp-content/uploads/2016/10/2.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Yellowstone!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 600,
  title: 'Rainbow Lodge Remodel',
  lat: 44.4182434,
  lng: -110.5803911,
  pic_url: 'http://centresky.com/wp-content/uploads/2016/05/21.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 275,
  title: 'Brokoks Lake Lodge',
  lat: 44.5015582,
  lng: -110.0193159,
  pic_url: 'http://www.brookslake.com/wp-content/uploads/2016/11/brooks-lake-lodge-lobby.jpg'
)

# Yellowstone

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 1400,
  title: 'Odis Club',
  lat: 35.6908104,
  lng: -83.5355896,
  pic_url: 'https://odis.homeaway.com/odis/listing/9421132c-34b1-4ebc-a98a-c0e34394534c.c10.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Great Smoky? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Great Smoky.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 2250,
  title: 'Great smoky cabin',
  lat: 35.7038799,
  lng: -83.5319418,
  pic_url: 'https://www.czmcam.org/wp-content/uploads/2017/02/Luxury-mountain-homes-colorado-exterior-rustic-with-stone-wall-mountain-house-stone-exterior-2.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Great Smoky!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 150,
  title: 'Edoctorradio cabin',
  lat: 35.5194197,
  lng: -83.3222574,
  pic_url: 'http://www.edoctorradio.com/wp-content/uploads/2017/05/Luxury-Mountain-Home-Plans1-768x576.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 1075,
  title: 'Inspirational cabin',
  lat: 35.5200135,
  lng: -83.2957787,
  pic_url: 'http://frit-fond.com/wp-content/uploads/2018/08/beautiful-18-inspirational-mountain-cabin-home-plans-home-plans-home-plans-mountain-home-house-plans-of-mountain-home-house-plans.jpg'
)
# great smoky

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 9900,
  title: 'Patagonia love',
  lat: -51.0186614,
  lng: -73.1306596,
  pic_url: 'http://www.southwindadventures.com/wp-content/uploads/2016/03/explora-Patagonia-in-winter-snowy-mountains-Patagonia-Chile-mgv27ip9r3dyd5xlbgq7koco9dqkhd93f1mcwh7rt4.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Torres Del Paine? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Torres Del Paine.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 650,
  title: 'Zicasso',
  lat: -51.062699,
  lng: -73.1426759,
  pic_url: 'https://www.zicasso.com/sites/default/files/styles/original_scaled_down/public/photos/tour/lake_pehoe_torres_del_paine_national_park_patagonia_chile.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Torres Del Paine!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 200,
  title: 'Torres cabin',
  lat: -51.0555781,
  lng: -72.9998537,
  pic_url: 'https://www.jetsetter.com/uploads/sites/7/2018/04/h-PooSFA-1380x690.jpeg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 1275,
  title: 'San Matin cabin',
  lat: -50.970042,
  lng: -72.9462953,
  pic_url: 'https://images.gabrielstechnology.com/reno/imagereader.aspx?imageurl=http%3A%2F%2FRealestateAdminImages.gabriels.net%2F170%2F78116%2F170-2016052417151403-115.jpg&option=N&w=640&permitphotoenlargement=false'
)

# Torres del Paine

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 900,
  title: 'Teton village',
  lat: 43.687295,
  lng: -110.7695799,
  pic_url: 'https://pictures.escapia.com/CLCRGR/3999030664.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Grand Canyon? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Grand Canyon.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 2250,
  title: 'Jackson cabin',
  lat: 43.6142611,
  lng: -110.810092,
  pic_url: 'https://pictures.escapia.com/CLCRGR/6915270461.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Grand Teton!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 900,
  title: 'Ranch View village',
  lat: 43.6579927,
  lng: -110.7616835,
  pic_url: 'https://pictures.escapia.com/CLCRGR/6346010567.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 675,
  title: 'Teton villa',
  lat: 43.8085731,
  lng: -110.735591,
  pic_url: 'https://robbreportedit.files.wordpress.com/2016/08/aspensong_exterior_021.jpg?w=1024'
)

# Grand Teton

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Nepel!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 100,
  title: 'Everest heart',
  lat: 27.9478098,
  lng: 86.7416836,
  pic_url: 'http://snowcattravel.com/communities/5/004/013/299/685//images/4631934035.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 975,
  title: 'Everest view villa',
  lat: 27.918084,
  lng: 86.6575695,
  pic_url: 'https://www.lifehimalayatrekking.com/pagegallery/everest-in-luxury-trek67.jpg'
)

#Nepal

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 400,
  title: 'Calvis Wyant',
  lat: 33.6707599,
  lng: -111.8762567,
  pic_url: 'https://www.calviswyant.com/wp-content/uploads/2014/07/10-041-02-Rear-Ext-EDIT1.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Grand Canyon? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Grand Canyon.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 1250,
  title: 'Canyon view',
  lat: 33.6610804,
  lng: -111.8623521,
  pic_url: 'https://www.prlog.org/12264559-north-scottsdale-arizona-coldwell-banker-luxury-real-estate-480-323-5365.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Grand Canyon!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 500,
  title: 'Foothills lodge',
  lat: 33.631151,
  lng: -111.8288782,
  pic_url: 'https://www.arizonafoothillsmagazine.com/in-house/wp-content/uploads/001_Dramatic-Architecture.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 875,
  title: 'Boulder Crest villa',
  lat: 33.6538736,
  lng: -111.8699052,
  pic_url: 'https://www.troonrealestate.com/wp-content/uploads/2010/04/Troon-Mountain-Luxury-Home.jpg'
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
  pic_url: 'https://travel.home.sndimg.com/content/dam/images/travel/fullset/2014/08/11/d7/new-zealand-hotels-ss-matakauri-lodge-009.rend.hgtvcom.966.644.suffix/1491585033408.jpeg'
)

House.create!(
  description: 'Planning a romantic getaway to South Island? Lucky you! With stunning vistas and wild beauty, few places kindle romance like South Island.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 1250,
  title: 'Blanket Bay Lodge',
  lat: -45.0406832,
  lng: 169.6941163,
  pic_url: 'https://www.lodgesofnz.co.nz/assets/Uploads/Blanket-Bay-Lodge-Glenorchy-New-Zealand-LR.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in South Island!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 300,
  title: 'Stone Villa',
  lat: -45.2665414,
  lng: 170.3658864,
  pic_url: 'https://www.lodgesofnz.co.nz/assets/Uploads/_resampled/FillWyIxOTAzIiwiNjQwIl0/Stone-Fly-Lodge-New-Zealand-LR.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 375,
  title: 'Lake villa',
  lat: -45.394254,
  lng: 169.7927398,
  pic_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvE4CyMnClDL_fduG8pjlCyQy42SC6cMR-OTYEqjlS0tXbZ8XhIg'
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
  pic_url: 'https://manage.isleblue.co/uploads/villas/images/4090/new-zealand-villa-lodge-at-hills-2017-010.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Plitvice? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Plitvice.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 250,
  title: 'Lake Bay Lodge',
  lat: 44.8831307,
  lng: 15.6055295,
  pic_url: 'https://backroads-web.s3.amazonaws.com/images/trips/2019/slideshows/top/BDCS-venice-croatia-ocean-cruise-bike-tour-3.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Plitvice!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 600,
  title: 'Villa Argemonia',
  lat: 44.8968125,
  lng: 15.5918395,
  pic_url: 'https://mobilepics.luxuryretreats.com/mediastock/med/600x352/1/121/120500_Croatia_VillaArgemonia_02.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 775,
  title: 'Plitvice villa',
  lat: 44.9093665,
  lng: 15.5939853,
  pic_url: 'https://www.elegantresorts.co.uk/WebImages/ImageStore1/108974.jpg'
)
#Plitvice Lake

House.create!(
  description: "New construction, 650 sq feet. Clean, comfortable, safe and charming. Perfect size for two people to spread out and enjoy lots of space. King bed, full kitchen, well appointed. Inside park gates in premium location. Lower level of a duplex home. Great reviews!",
  host_name: 'Blake Zhai',
  host_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/002/960/original/DSC00219_copy.JPG?1532380617',
  price: 400,
  title: 'Schwarzsee Hotel',
  lat: 45.9858636,
  lng: 7.6325739,
  pic_url: 'https://mobilepics.luxuryretreats.com/mediastock/med/600x352/1/113/112785_swissalps_heinzjulienpenthouse_01.jpg'
)

House.create!(
  description: 'Planning a romantic getaway to Matterhorn? Lucky you! With stunning vistas and wild beauty, few places kindle romance like Matterhorn.',
  host_name: 'Zara Mickey',
  host_url: 'https://a0.muscache.com/im/pictures/5eed272b-dc16-4d8c-8541-8b0c1f36dae2.jpg?aki_policy=profile_x_medium',
  price: 250,
  title: 'Hornli Hut',
  lat: 45.9788258,
  lng: 7.6365221,
  pic_url: 'https://blog1.fkimg.com/wp-content/uploads/2016/04/Luxury-Lake-Houses-Queenstown-2.jpg'
)

House.create!(
  description:"There is a beautiful hillside view from your deck with an electric grill and seating. You'll have a queen size Murphy bed that pulls down from the wall, a queen size sofa sleeper and one full bathroom w/ a shower-tub. You will experience the best lodging value in Matterhorn!",
  host_name: 'Kelly Baker',
  host_url: 'https://a0.muscache.com/im/users/10514115/profile_pic/1386564331/original.jpg?aki_policy=profile_x_medium',
  price: 100,
  title: 'Rifugio Duca degli Abruzzi',
  lat: 45.963972,
  lng: 7.6432169,
  pic_url: 'https://i.dailymail.co.uk/i/pix/2014/10/23/1414058000854_wps_26_AX9GY4_jpg.jpg'
)

House.create!(
  description: "Welcome to Stoneoaks, an A-frame mountain home hand-built in the late 70s. There are 2,100 square feet on three levels. Stoneoaks has magnificent views to the west offering a daytime panorama of the Sierras!",
  host_name: 'Isaac Fisher',
  host_url: 'https://a0.muscache.com/im/users/27677097/profile_pic/1424133935/original.jpg?aki_policy=profile_x_medium',
  price: 275,
  title: 'Carrel Rifugio',
  lat: 45.976589,
  lng: 7.6496971,
  pic_url: 'https://images.gabrielstechnology.com/reno/imagereader.aspx?imageurl=http%3A%2F%2Fm.sothebysrealty.com%2F1050i215%2Fmddx39r423pymkpbcaawqw4c55i215&option=N&idclient=180&idlisting=180-l-871-33qkx2&w=480&permitphotoenlargement=false'
)

# Matterhorn
