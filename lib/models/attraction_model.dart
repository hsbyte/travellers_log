import 'package:travellers_log/models/activity_model.dart';

class Attraction {
  String city;
  String state;
  String country;
  String countryCode;
  Activity activity;

  Attraction({
    this.city,
    this.state,
    this.country,
    this.countryCode,
    this.activity,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) {
    List vicinity = json['address'].indexOf('<br/>') > -1
        ? json['address']
            .substring(json['address'].indexOf('<br/>') + 5)
            .split(', ')
        : json['address'].split(', ');
    return Attraction(
      city: null,
      state: vicinity[0],
      country: vicinity.length > 1 ? vicinity[1] : vicinity[0],
      countryCode: null,
      activity: Activity(
        name: json['name'],
        description: json['description'],
        vicinity: json['address'],
        imageUrl: json['media'][0]['image'] != null
            ? json['media'][0]['image']
            : "http://via.placeholder.com/160x100",
        // averageRating: json['averageRating'],
      ),
    );
  }
}

List<Attraction> attractions = [
  Attraction(
    city: 'Los Angeles',
    state: 'California',
    country: 'United States',
    countryCode: 'US',
    activity: Activity(
      name: 'Yosemite National Park',
      description:
          'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.',
      imageUrl: 'assets/images/Yosemite National Park.png',
    ),
  ),
  Attraction(
    city: 'Brookings',
    state: 'Oregon',
    country: 'United States',
    countryCode: 'US',
    activity: Activity(
      name: 'Samuel H. Boardman State Scenic Corridor',
      description:
          'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.',
      imageUrl: 'assets/images/Samuel H. Boardman State Scenic Corridor.png',
    ),
  ),
  Attraction(
    city: 'San Francisco',
    state: 'California',
    country: 'United States',
    countryCode: 'US',
    activity: Activity(
      name: 'Golden Gate Bridge',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageUrl: 'assets/images/Golden Gate Bridge, California.png',
    ),
  ),
];
