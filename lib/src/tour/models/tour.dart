import 'package:json_annotation/json_annotation.dart';

part 'tour.g.dart';

@JsonSerializable()
class Tour {
  const Tour({
    this.id = '',
    this.title = '',
    this.description = '',
    this.titleImageUrl = '',
    this.cities = const [],
    this.price = 0,
    this.daysItinerary = const [],
  });
  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
  Map<String, dynamic> toJson() => _$TourToJson(this);
  final String id;
  final String title;
  final String description;
  final String titleImageUrl;
  final List<String> cities;
  final double price;
  final List<String> daysItinerary;

  static const empty = Tour();
}

// List<Tour> tours = [
//   Tour(
//     id: 1,
//     title: "Golden Triangle",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi (Arrival): On arrival at New Delhi international airport you will be received and transferred to check-in at your hotel. Stay overnight at your Hotel.\nDay 02: Delhi: After breakfast take full day guided tour of this historical city which includes your visit to the Humayun’s tomb, Qutub Minar, Lotus Temple, Red Fort, Chandni Chowk, Jama Masjid, Raj Ghat, India Gate among other attractions. Drive past impressive boulevards and buildings such as President’s Residence and others in Lutyen’s Delhi (New Delhi).\nDay 03: Agra: After breakfast check-out from the hotel and drive to Agra. On arrival, visit the tomb of Mughal Emperor Akbar in Sikandra and later check-in at your hotel. After brief leisure visit Agra Fort and the incomparable Taj Mahal in guided sightseeing tour. Stay overnight at your hotel.\nDay 04: Jaipur: After breakfast check-out from the hotel and drive to Jaipur while visiting the abandoned town – Fatehpur Sikri on the way. On arrival at Jaipur, check-in at your hotel.\nDay 05: Jaipur: After breakfast take a guided sightseeing tour of Amber fort. Here, enjoy elephant ride to the hilltop fort. Later, visit the City Palace and its vast treasure of rare manuscripts, paintings and other collections. Other attractions around the palace are Hawa Mahal, Jantar Mantar observatory, Albert Hall Museum, Birla temple etc. Evening would be kept free at leisure to move around or to just relax in your hotel.\nDay 06: Jaipur –Delhi (Departure): At appropriate time you will be transferred to Delhi Airport to board the flight back to onwards journey.\nThe tour ends.',
//     titleImageUrl: AppImages.delhiIndiaGate,
//     location: 'New Delhi, Agra & Jaipur',
//     rating: 4,
//   ),
//   Tour(
//     id: 2,
//     title: "Royal Rajputana",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi (Arrival): On arrival at New Delhi international airport you will be received and transferred to check-in at proposed hotel. Take a guided tour of this historical city visit Humayun’s tomb, Qutub Minar, Red Fort, Chandni Chowk, Spice Market, Jama Masjid among other attractions. Drive past impressive boulevards and buildings such as President’s Residence, India Gate and others in New Delhi.\nDay 02: Mukundgarh: After breakfast check out from the hotel and drive further to the Shekhawati town Mukundgarh. On arrival, check-in at proposed hotel.\nDay 03: Mukundgarh: During the day take sightseeing tour of Nawalgarh, Mandawa and Fatehpur to see some of the best beautiful Frescoed Havelies in Shekhawati region – known as the World’s largest open art gallery.\nDay 04: Jodhpur: After breakfast check-out from your hotel and drive to Jodhpur. On arrival at Jodhpur, check in at proposed hotel. Evening is free at leisure. You may walk in the busy & colourful bazaars ‘market’ around Clock Tower in the old town. Stay overnight in Jodhpur.\nDay 05: Jodhpur: During the day enjoy sightseeing tour of Jodhpur visit the majestic Mehrangarh Fort, Jaswant Thada, Mandore Garden, and place of tourist’s interest. Stay overnight in Jodhpur.\nDay 06: Udaipur: After breakfast check-out from your hotel and drive to the Lake City – Udaipur while visiting Ranakpur Jain Temples on the way. On arrival at Udaipur, check-in at proposed hotel. Evening would be kept completely at leisure.\nDay 07: Udaipur: During the day enjoy sightseeing tour of city’s main attractions City Palace Complex, Saheliyon Ki Bari, Jagdish temple and walk through the interesting labyrinths around it. Enjoy boat ride over the Lake Pichola.\nDay 08: Jaipur: After breakfast check-out from your hotel and drive to Jaipur, en-route you may visit Chittorgarh Fort. On arrival at Jaipur, check-in at the proposed hotel. In the evening you may walk through many interesting lanes of Jaipur, which are full of shops of artisans, temples and traditional houses.\nDay 09: Jaipur: After breakfast you will be met by our expert guide who through his vast storehouse of knowledge and experience will share with you many interesting information and historical facts about the city. Take a guided sightseeing tour of Amber fort, City Palace, Hawa Mahal, Jantar Mantar observatory, Albert Hall Museum.\nDay 10: Agra: After early breakfast check-out from your hotel and drive to Agra and en-route visiting Fatehpur Sikri. On arrival at Agra, check-in at your hotel. Later take guided tour of Agra Fort and the beautiful Taj Mahal. Stay overnight at your hotel.\nDay 11: Delhi (Departure): After breakfast you will be transferred back to Delhi international airport to board the onward flight back home. The tour ends.',
//     titleImageUrl: AppImages.rajasthanHawaMahal,
//     location: 'Delhi, Mukundgarh, Jodhpur, Udaipur, Jaipur & Agra',
//     rating: 4,
//   ),
//   Tour(
//     id: 3,
//     title: "Golden Temple with Royal Rajputana",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi (Arrival): On arrival at New Delhi international airport you will be received and transferred to check-in at your hotel. Rest of the time is free at leisure. Stay overnight at your hotel.\nDay 02: Delhi: After breakfast take guided tour of this historical city visit Humayun’s tomb, Qutub Minar, Lotus Temple, Red Fort, Chandni Chowk, Jama Masjid, India Gate, President’s Residence and others in Lutyen’s Delhi (New Delhi).\nDay 03: Amritsar: At appropriate time in the morning you will be assisted to board the train from New Delhi station to Amritsar as per the below schedule. On arrival at Amritsar railway station you will be received and transferred to check in at your hotel. Rest of the time is free at leisure. Evening you will be transferred to the Golden Temple to experience a very interesting evening ceremony.\nDay 04: Amritsar: Morning visit the famous Golden Temple and other place of tourist attractions in Amritsar city in a guided tour. In the afternoon you will be transferred to Wagha Border. Stay overnight at your hotel.\nDay 05: Patiala: After breakfast check-out from your hotel and proceed to Patiala. On arrival, check in at your hotel. Later, in the day you may visit the old town and its market and may take a tour of the museum. Evening is at leisure.\nDay 06: Mukundgarh: After breakfast check-out from your hotel and drive to Mandawa. On arrival, check-in at proposed hotel. Evening is free at leisure.\nDay 07: Mukundgarh: Morning take sightseeing tour of Mandawa, Nawalgarh & Fatehpur to see some of the beautiful Frescoed Havelies of Shekhawati region – known as largest open art gallery of the world.\nDay 08: Bikaner: Morning drive to the Camel city – Bikaner. On arrival, check in at your hotel. After brief leisure visit the well-preserved Junagarh Fort, Old Markets, and other places of tourist including the unique Camel Breeding Farm. Stay overnight at Bikaner.\nDay 09: Jaisalmer: Drive through the Thar Desert and finally reach the Golden City – Jaisalmer. On arrival, check in at your hotel. Rest of the time will be kept free at leisure. In the evening you may walk in the still inhabited fort of Jaisalmer abuzz with a distinct and vibrant lifestyle.\nDay 10: Jaisalmer: Morning enjoy sightseeing tour of the Jaisalmer Fort and various other attractions of this fairy tale city. In the afternoon take an excursion to the sand dunes of Samm to see the beautiful sunset in the Thar Desert. Here, also enjoy camel ride through the desert. Evening, drives back to your hotel for the overnight stay.\nDay 11: Jodhpur: Drive further to the sun-city Jodhpur and on arrival check-in at your hotel. Later, take sightseeing tour of Jodhpur visit the majestic Mehrangarh fort, Jaswant Thada, the old town & the busy bazaars around Clock Tower. Evening is free at leisure.\nDay 12: Udaipur: After breakfast check-out from your hotel and drive to the Lake City – Udaipur while visiting Ranakpur Jain Temples on the way. On arrival at Udaipur, check-in at your beautiful hotel. Evening would be kept completely at leisure.\nDay 13: Udaipur: During the day enjoy guided sightseeing tour of Udaipur visit City Palace, Jagdish temple, Saheliyon ki Bari, etc. Enjoy, boat ride trip over Lake Pichola at the sunset. Evening is free to explore the interesting labyrinths around Jagdish temple on your own.\nDay 14: Delhi / Mumbai: At appropriate time you will be assisted to airport to board the flight to Delhi / Mumbai. Stay overnight at your hotel.\nDay 15: Departure: At appropriate time you will be transferred to international airport to board the onward flight back home. The tour ends.',
//     titleImageUrl: AppImages.goldenTemple,
//     location:
//         'New Delhi, Amritsar, Patiala, Bikaner, Mukundgarh, Jodhpur, Udaipur,
// Jaipur & Agra',
//     rating: 4,
//   ),
//   Tour(
//     id: 4,
//     title: "Weekend Trip to Jaisalmer",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi/ Jaipur – Jaisalmer: Take overnight train from Delhi to Jaisalmer.\nDay 02: Jaisalmer: On arrival, check in at your hotel. Morning enjoy sightseeing tour of the Jaisalmer Fort and various other attractions of this fairy tale city. In the evening you may walk in the still inhabited fort of Jaisalmer.\nDay 03: Jaisalmer - Sam Dunes: In the afternoon transferred to the sand dunes of Sam to see the beautiful sunset in the Thar Desert. Here, also enjoy camel ride through the desert and folk dance in evening performance following dinner. Stay overnight in Sam Dunes.\nDay 04: Sam Dunes - Jaisalmer – Delhi: Transfer from Sam Dunes to railway station Jaisalmer. Take overnight train to Delhi. The tour ends.',
//     titleImageUrl: AppImages.jaisalmer,
//     location: 'Jaisalmer',
//     rating: 4,
//   ),
//   Tour(
//     id: 5,
//     title: "Weekend Trip to Agra",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi – Agra: Take a day train to reach Agra. On arrival at Agra, check-in at your hotel. Later take guided tour of Agra Fort and the beautiful Taj Mahal. Stay overnight at your hotel.\nDay 02: Agra - Jaipur: After early breakfast check-out from your hotel and drive to Jaipur. En-route visit Fatehpur Sikri. Stay overnight at your proposed hotel.\nDay 03: Jaipur: After breakfast take a guided sightseeing tour of Amber fort, City Palace, Hawa Mahal, Jantar Mantar observatory, Albert Hall Museum and other city attractions.\nDay 04: Jaipur – Delhi departure: By surface transfer to Delhi. The tour ends.',
//     titleImageUrl: AppImages.agraTajMahal,
//     location: 'Rajasthan',
//     rating: 4,
//   ),
//   Tour(
//     id: 6,
//     title: "Weekend Trip to Ranthambhore",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Jaipur – Ranthambhore (Arrival): On arrival at Jaipur airport you will be received and transferred straight to check-in at your resort in Ranthambhore. Rest of the time is free at leisure.\nDay 02: Ranthambhore: In the morning you will be taken for a jeep safari for tiger tracking and bird watching. Afterwards, return back to your resort and have your late breakfast. After lunch and brief leisure move for an afternoon jungle safari of Ranthambhore National Park. Stay overnight at resort.\nDay 03: Ranthambhore: Take Moring and afternoon jungle safaris of Ranthambhore National Park.\nDay 04: Ranthambhore – Jaipur (Departure): After a leisurely breakfast, check-out from resort and you will be transferred back to Jaipur airport to board the onward destination flight. The tour ends.',
//     titleImageUrl: AppImages.ranthamboreTiger,
//     location: 'Ranthambhore',
//     rating: 4,
//   ),
//   Tour(
//     id: 7,
//     title: "Weekend Trips to Sariska",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi arrival: On arrival at Delhi International airport you will be received and transferred straight to check-in at your resort in Sariska Tiger Reserve. Rest of the time is free at leisure.\nDay 02: Delhi – Sariska: In the morning you will be taken for a jeep safari for tiger tracking and bird watching. Afterwards, return back to your resort and have your late breakfast. After lunch and brief leisure move for an afternoon jungle safari of Sariska Tiger Reserve. Stay overnight at resort.\nDay 03: Sariska: Enjoy morning & afternoon safari. Stay overnight at your proposed hotel.\nDay 04: Sariska – Delhi - departure: After a leisurely breakfast, check-out from resort and you will be transferred back to Delhi International airport to board the onward destination flight. The tour ends',
//     titleImageUrl: AppImages.sariskaDear,
//     location: 'Sariska',
//     rating: 4,
//   ),
//   Tour(
//     id: 8,
//     title: "Heritage Rajasthan & Tiger Tour",
//     price: 20000,
//     tourItinerary:
//         'Day 01: Delhi Arrival: On arrival at IGI airport you will be assisted and transferred to your hotel. Stay overnight at your proposed hotel.\nDay 02: Delhi: Enjoy full day sightseeing tour of Delhi. Stay overnight at your proposed hotel.\nDay 03: Delhi – Agra: By surface transferred to Agra. Enjoy sightseeing tour of Taj Mahal the incomparable memorable monument of love, Agra fort & It-mad-ud-daula. Stay overnight at your proposed hotel.\nDay 04: Agra – Jaipur : Surface transferred to Jaipur. En-route visit Fatehpur Sikri & Abhaneri. Stay overnight at your proposed hotel.\nDay 05: Jaipur : Full day sightseeing tour of the city. Visit Sanganer city famous for block printing and hand-made paper work. Stay overnight at your proposed hotel.\nDay 06: Jaipur – Ranthambhore : By surface transferred to Ranthambhore National Park. Take afternoon safari. Stay overnight at your proposed hotel.\nDay 07: Ranthambhore: Take morning and afternoon safaris. Stay overnight at your proposed hotel.\nDay 08: Ranthambhore – Bhainsrorgarh : By surface transferred to Bhainsrorgarh. Stay overnight at your hotel.\nDay 09: Bhainsrorgarh: Bhainsrorgarh Fort is famous destination for its traditional art work and their culture. It is situated between Chambal and Bamani river. You can enjoy a unique destination there. Stay overnight at your proposed hotel.\nDay 10: Bhainsrorgarh – Udaipur : Surface transferred to Udaipur city. Explore the city on your own. Stay overnight at your proposed hotel.\nDay 11: Udaipur : Enjoy sightseeing tour of city. Enjoy boat riding in the evening. Stay overnight at your proposed hotel.\nDay 12: Udaipur – Delhi/ Mumbai: At appropriate time you will be assisted and transferred to airport to board the flight to Delhi/ Mumbai. Stay overnight at your proposed hotel.\nDay 13: Delhi/ Mumbai departure: At appropriate time you will be assisted and transferred to International airport. The tour ends.',
//     titleImageUrl: AppImages.heritageRajasthanTigerTour,
//     location: 'South India',
//     rating: 4,
//   ),
//   Tour(
//     id: 9,
//     title: 'Golden Temple with Triangle',
//     price: 25000,
//     tourItinerary:
//         'Day 01: Delhi (Arrival): On arrival at New Delhi international airport you will be received by our representative and transferred to check-in at your hotel. Rest of the time is free at leisure. Stay overnight in Delhi.\nDay 02: Delhi: After breakfast enjoy guided tour of this historical city visit Red Fort, Chandni Chowk, Jama Masjid, Raj Ghat, Humayun’s tomb, Qutub Minar, Lotus Temple, President’s Residence, India Gate and others in Lutyen’s Delhi. Stay overnight at Delhi.\nDay 03: Agra: After breakfast check-out from your hotel and drive to Agra, visiting Sikandara on the way. On arrival, check-in at your hotel in Agra. Later, visit Agra Fort and the incomparable Taj Mahal in a guided sightseeing tour. Stay overnight in Agra.\nDay 04: Jaipur: After breakfast check-out from the hotel and drive to Jaipur while visiting abandoned town Fatehpur Sikri on the way. Evening would be kept free at leisure. Stay overnight at Jaipur.\nDay 05: Jaipur: After breakfast take a sightseeing tour of Amber fort, City Palace, Hawa Mahal, Jantar Mantar observatory, Albert Hall and Birla Temple. In the evening you may visit colourful market.\nDay 05: Amritsar: At appropriate time check-out from the hotel and you will be transferred to Jaipur airport to board the flight to Amritsar via Delhi. On arrival you will be transferred to check-in at your hotel. In the evening you will be transferred to the Golden Temple to experience a very interesting evening ceremony. Stay overnight at your proposed hotel.\nDay 06: Amritsar: Morning visit the famous Golden Temple and other place of tourist attractions in Amritsar city. In the afternoon you will be transferred to Wagha Border (the only official crossing between India and Pakistan at present). Particularly interesting is the day closing ceremony when the flags of both the countries are brought down.\nDay 07: Delhi Departure: After breakfast transferred to Amritsar railway station / Airport to board the flight to Delhi. On arrival at Delhi Railway station / Airport you will be transferred to International airport or take internal transfer to the international terminal to board your onward flight back home.',
//     titleImageUrl: AppImages.goldenTemple,
//     location: 'Jaisalmer',
//     rating: 4,
//   ),
//   Tour(
//     id: 10,
//     title: 'Golden Triangle with Khajuraho & Varanasi',
//     tourItinerary:
//         'Day 01: New Delhi: On arrival at New Delhi international airport you will be received by our representative and transferred to check-in at your hotel. Rest of the time is free at leisure. Stay overnight in Delhi.\nDay 02: New Delhi: After breakfast enjoy guided tour of this historical city visit Red Fort, Chandni Chowk, Jama Masjid, Raj Ghat, Humayun’s tomb, Qutub Minar, Lotus Temple, President’s Residence, India Gate and others in Lutyen’s Delhi. Stay overnight at Delhi.\nDay 03: Jaipur: After breakfast transferred to Jaipur. On arrival check in at your proposed hotel. You may visit colourful market in the evening.\nDay 04: Jaipur: After breakfast take a guided sightseeing tour of Amber Fort, Ganesh Pole, City Palace, Jantar Mantar, Birla Temple, Albert Museum and other city attractions.\nDay 05: Agra: Visit the well-preserved capital of Akbar- Fatehpur Sikri on the way. At Agra visit the incomparable Taj Mahal and Agra Fort.\nDay 07: Gwalior: Visit Tansen’s tomb, Jai Vilas Palace and the immense Gwalior fort. Sound and light show in the evening at Man Mandir palace of the fort is highly recommended.\nDay 08: Orchha: After breakfast transferred to Orchha- a virgin historical site picturesquely located by the banks of Betwa river. The place with its beautiful palaces and thematic chambers is still almost untouristic. Day free to move on own.\nDay 09: Orchha: Visit the Fort, Raj Mahal palace, Raj Praveen Mahal Palace, Jehangir palace and the Royal chhattries. Also visit Raja Ram temple- the only place where Lord Rama is worshipped as a king.\nDay 10: Khajuraho: Reach Khajuraho by road and resume the main itinerary thereon. Guided tour of a Eastern Group of temples .\nDay 11: Khajuraho: Morning tour to another group of outstanding temples.\nDay 12: Varanasi: Reach by flight. Take walking tour of a few Ghats and narrow backlanes to feel the pulse of this most sacred city of India.\nDay 13: Varanasi: Early morning boat ride on river Ganges to witness holy rituals on Ghats. A very spiritual experience! Day tour to Sarnath where Buddha delivered his first sermon.\nDay 14: New Delhi: Take the flight back to Delhi. On arrival transfer to hotel. Evening free to visit one of the many cultural centers of New Delhi.\nDay 15: Delhi (Departure): Transfer to airport at appropriate departure time for onward journey. Tour ends.',
//     titleImageUrl: AppImages.khajuraho,
//     location: 'Khajuraho & Varanasi',
//     rating: 3,
//     price: 25000,
//   ),
//   Tour(
//     id: 11,
//     title: 'Golden Triangle with Pushkar Camel Fair',
//     tourItinerary:
//         'Day 01: Delhi (Arrival): On arrival at New Delhi international airport you will be received by our representative and transferred further to check in at your proposed hotel. Stay overnight at Delhi.\nDay 02: Delhi: Morning enjoy sightseeing tour of New Delhi visit Humayun’s Tomb, Qutub Minar, Lotus Temple, President’s Residence, India Gate, Red Fort, Chandni Chowk & Jama Masjid, Raj Ghat among other attractions.\nDay 03: Agra: After breakfast check out from your hotel and you will be transferred to Agra in your exclusive vehicle. En-route visit Sikandra. On arrival, check in at your hotel in Agra. After brief leisure enjoy guided sightseeing tour of Agra which includes your visit to Agra Fort, Itmad-ud-Daula and the beautiful Taj Mahal.\nDay 04: Jaipur: After breakfast check out from the hotel and drive further to Jaipur. En route visit Fatehpur Sikri and a little further you may also visit beautiful step-well ‘Chad Baori’ in Abhaneri village. On arrival, check-in at your hotel in Jaipur. Evening, you may walk through many interesting lanes of Jaipur, which are full of shops of artisans, temples and traditional houses.\nDay 05: Jaipur: After breakfast take full day sightseeing tour of Amber fort, mirror palace and elaborate Ganesh Pole, City Palace and its vast treasure of rare manuscripts, paintings and other collections. Other attractions around the palace equally noticeable for unique architecture are Hawa Mahal, Jantar Mantar observatory, Albert Hall and Birla Temple.\nDay 06: Pushkar: Morning drive further to Pushkar and on arrival, check in at proposed hotel. Remaining day will be kept free at your own discretion.\nDay 07: Pushkar: Day will be kept free at your own discretion to enjoy at camel fair.\nDay 08: Pushkar: Day will be kept free at your own discretion to enjoy at camel fair.\nDay 09: Delhi: At appropriate time check-out from your hotel and you will be transferred to Delhi. On arrival, check-in at Proposed hotel. Stay overnight at Delhi.\nDay 10: Tuesday: Delhi (Departure): At appropriate time you will be transferred to Delhi international airport to board the flight back home. The tour ends.',
//     titleImageUrl: AppImages.pushkarCamelMela,
//     location: 'Pushkar',
//     rating: 4,
//     price: 50000,
//   ),
// ];
