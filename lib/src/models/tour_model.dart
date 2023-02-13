class TourModel {
  final String image, title, tripPlan, location;
  final int price, id;
  final double rating;
  final List<String> imageList;
  TourModel({
    required this.imageList,
    required this.id,
    required this.title,
    required this.tripPlan,
    required this.image,
    required this.location,
    required this.rating,
    required this.price,
  });
}

List<TourModel> tours = [
  TourModel(
    id: 1,
    title: "Kashmir",
    price: 20000,
    tripPlan:
        'Picturesque and enchanting, Kashmir is cradled high in the lofty green Himalayas and hailed all over the world for its incredible natural beauty. Surrounded by mountain peaks, lush green valleys, glistening lakes, temples and spectacular Mughal-era gardens, it has inspired poets through centuries.',
    image: "assets/images/kashmir.jpg",
    imageList: [
      'assets/images/kashmir2.jpg',
      'assets/images/kashmir3.jpg',
      'assets/images/kashmir4.jpg',
      'assets/images/kashmir5.jpg',
    ],
    location: 'Kashmir',
    rating: 4,
  ),
  TourModel(
    id: 2,
    title: "Mumbai",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/mumbai.jpg',
    imageList: [
      'assets/images/mumbai_building.jpg',
      'assets/images/mumbai_sea_link.jpg'
          'assets/images/mumbai2.jpg'
          'assets/images/mumbai3.jpg'
    ],
    location: 'Mumbai',
    rating: 4,
  ),
  TourModel(
    id: 3,
    title: "New Delhi",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/newdelhi.jpg',
    imageList: [
      'assets/images/newdelhi2.jpg',
      'assets/images/newdelhi3.jpg',
      'assets/images/newdelhi4.jpg',
      'assets/images/newdelhi5.jpg',
    ],
    location: 'New Delhi',
    rating: 4,
  ),
  TourModel(
    id: 4,
    title: "Pushkar",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/pushkar.jpg',
    imageList: [
      'assets/images/pushkar2.jpg',
      'assets/images/pushkar3.jpg',
      'assets/images/pushkar4.jpg',
      'assets/images/pushkar5.jpg',
    ],
    location: 'Pushkar',
    rating: 4,
  ),
  TourModel(
    id: 5,
    title: "Rajasthan",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/rajasthan.jpg',
    imageList: [
      'assets/images/rajasthan_amer_fort.jpg',
      'assets/images/rajasthan_nahargard.jpg',
      'assets/images/rajasthan_amer_fort2.jpg',
      'assets/images/rajasthan_patrika_gate.jpg',
    ],
    location: 'Rajasthan',
    rating: 4,
  ),
  TourModel(
    id: 6,
    title: "North East India",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/northeast.jpg',
    imageList: [
      'assets/images/northeast2.jpg',
      'assets/images/northeast3.jpg',
      'assets/images/northeast4.jpg',
      'assets/images/northeast5.jpg',
    ],
    location: 'North East India',
    rating: 4,
  ),
  TourModel(
    id: 7,
    title: "Uttarakhand",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/snow_mountain_in_plane.jpg',
    imageList: [
      'assets/images/uttarakhand.jpg',
      'assets/images/uttarakhand2.jpg',
      'assets/images/uttarakhand3.jpg',
      'assets/images/uttarakhand4.jpg',
    ],
    location: 'Uttarakhand',
    rating: 4,
  ),
  TourModel(
    id: 8,
    title: "South India",
    price: 20000,
    tripPlan: dummyText,
    image: 'assets/images/southindia.jpg',
    imageList: [
      'assets/images/southindia2.jpg'
          'assets/images/southindia3.jpg'
          'assets/images/southindia4.jpg'
          'assets/images/southindia5.jpg'
    ],
    location: 'South India',
    rating: 4,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
