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
