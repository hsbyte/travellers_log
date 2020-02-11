class Destination {
  String city;
  String state;
  String country;
  String isoCode;
  String imageUrl;
  String attribution;
  num favorite;

  Destination({
    this.city,
    this.state,
    this.country,
    this.isoCode,
    this.imageUrl,
    this.attribution,
    this.favorite,
  });

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      isoCode: json['isoCode'],
      imageUrl: json['imageUrl'] != null
          ? json['imageUrl']
          : "http://via.placeholder.com/160x100",
      attribution: json['attribution'],
      favorite: json['favorite'],
    );
  }
}
