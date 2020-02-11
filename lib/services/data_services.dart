import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:travellers_log/models/destination_model.dart';
import 'package:travellers_log/models/attraction_model.dart';
import 'package:travellers_log/env.dart';

class DataServices with ChangeNotifier {
  bool _isFetching = false;

  bool get isFetching => _isFetching;
  set isFetching(bool value) {
    _isFetching = value;
    notifyListeners();
  }

  List<Attraction> _attractions = [];
  List<Attraction> get attractions => _attractions;
  set attractions(List<Attraction> list) {
    _attractions = list;
    notifyListeners();
  }

  Future<List<Attraction>> getAttractions(String api) async {
    _isFetching = true;
    final response = await http.get('$endPoint$api');
    attractions = null;
    if (response.statusCode == 200) {
      List list = json.decode(response.body);
      List<Attraction> _dataList = [];
      list.forEach((data) {
        _dataList.add(Attraction.fromJson(data));
      });
      attractions = _dataList;
    }
    _isFetching = false;
    // notifyListeners();
    return attractions;
  }

  List _destinations = [];
  List get destinations => _destinations;
  set destinations(List<Destination> list) {
    _destinations = list;
    notifyListeners();
  }

  Future<List<Destination>> getDestinations(String api) async {
    _isFetching = true;
    final response = await http.get('$endPoint$api');
    destinations = null;
    if (response.statusCode == 200) {
      List list = json.decode(response.body);
      List<Destination> _dataList = [];
      list.forEach((data) {
        _dataList.add(Destination.fromJson(data));
      });
      destinations = _dataList;
    }
    _isFetching = false;
    return destinations;
  }
}
