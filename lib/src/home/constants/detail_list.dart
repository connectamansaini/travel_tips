class Detail {
  final String title;
  final String description;
  final String image;

  const Detail(this.title, this.description, this.image);
}

final List<Detail> detail = [
  const Detail(
      'Kashmir',
      'Picturesque and enchanting, Kashmir is cradled high in the lofty green Himalayas and hailed all over the world for its incredible natural beauty. Surrounded by mountain peaks, lush green valleys, glistening lakes, temples and spectacular Mughal-era gardens, it has inspired poets through centuries.',
      'assets/images/kashmir.jpg'),
  const Detail('Mumbai', 'Mumbai description', 'assets/images/mumbai.jpg'),
  const Detail('New Delhi', 'description', 'assets/images/newdelhi.jpg'),
  const Detail('Pushkar', 'description', 'assets/images/pushkar.jpg'),
  const Detail('Rajasthan', 'description', 'assets/images/rajasthan.jpg'),
  const Detail(
      'North East India', 'description', 'assets/images/northeast.jpg'),
  const Detail('Uttarakhand', 'description', 'assets/images/mountain.jpg'),
  const Detail('South India', 'description', 'assets/images/southindia.jpg'),
];
