import 'package:flutter/material.dart';
import 'package:travellers_log/widgets/my_location.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Discover nearby places',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 20.0,
            ),
            MyLocation(),
          ],
        ),
      ),
    );
  }
}
