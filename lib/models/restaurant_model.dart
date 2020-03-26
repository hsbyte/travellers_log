class Restaurant {
  String name;
  String description;
  String city;
  String country;
  String imageUrl;

  Restaurant({
    this.name,
    this.description,
    this.city,
    this.country,
    this.imageUrl,
  });
}

List<Restaurant> restaurants = [
  Restaurant(
    name: 'Epicure',
    city: 'Paris',
    country: 'France',
    description:
        'Alii perpetua eum ad. Ei usu case perpetua qualisque, nullam ubique efficiantur cum id. Nisl saepe eu mel.',
    imageUrl: 'assets/images/Epicure, Paris, France.jpg',
  ),
  Restaurant(
    name: 'Ristorante Villa Crespi',
    city: 'Orta San Giulio',
    country: 'Italy',
    description:
        'Ad sea aliquando dissentiunt, pri admodum electram assentior et. Mel no omnes minimum accusamus, civibus imperdiet ut nam.',
    imageUrl:
        'assets/images/Ristorante Villa Crespi, Orta San Giulio, Italy.jpg',
  ),
  Restaurant(
    name: 'The Jane',
    city: 'Antwerp',
    country: 'Belgium',
    description:
        'Ut eum diam soleat graeci, eam te dicat regione percipitur, per dicta labore petentium in.',
    imageUrl: 'assets/images/The Jane, Antwerp, Belgium.jpg',
  ),
  Restaurant(
    name: 'El Celler de Can Roca',
    city: 'Girona',
    country: 'Spain',
    description:
        'Postea salutatus no usu, in vim quas elitr, dicit appareat officiis eum et. Persius quaeque et ius.',
    imageUrl: 'assets/images/El Celler de Can Roca, Girona, Spain.jpg',
  ),
  Restaurant(
    name: 'Martin Berasategui',
    city: 'Lasarte',
    country: 'Spain',
    description:
        'Dictas neglegentur an per, luptatum inimicus his ne. Et nusquam abhorreant pro.',
    imageUrl: 'assets/images/Martin Berasategui, Lasarte, Spain.jpg',
  ),
];
