import 'package:flutter/material.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 18.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Recent searches',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
