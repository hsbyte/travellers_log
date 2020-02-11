import 'package:flutter/material.dart';
import 'package:travellers_log/views/foods_view.dart';
import 'package:travellers_log/views/home_view.dart';
import 'package:travellers_log/views/hotels_view.dart';
import 'package:travellers_log/views/places_view.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => HomeView(),
  '/hotels': (context) => HotelsView(),
  '/trips': (context) => null,
  '/places': (context) => PlacesView(),
  '/foods': (context) => FoodsView(),
};

final List<String> views = [
  '/hotels',
  '/trips',
  '/places',
  '/foods',
];
