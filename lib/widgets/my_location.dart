import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton.icon(
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 25.0,
      ),
      onPressed: () => print('Use my location'),
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
        style: BorderStyle.solid,
      ),
      icon: Icon(
        Icons.near_me,
        size: 18.0,
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        'Use my location',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
