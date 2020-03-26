import 'package:flutter/material.dart';
import 'package:travellers_log/models/restaurant_model.dart';

class PopularRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 18.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Popular restaurants',
                  style: Theme.of(context).textTheme.subtitle,
                ),
                GestureDetector(
                  onTap: () => print('See All'),
                  child: Text(
                    'See All',
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 180.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (BuildContext context, index) {
                Restaurant restaurant = restaurants[index];
                return Container(
                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 150.0,
                  child: GestureDetector(
                    onTap: () => print(index),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(5.0, 10.0),
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image(
                              image: AssetImage(restaurant.imageUrl),
                              width: 150.0,
                              height: 90.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          restaurant.name,
                          style: Theme.of(context).textTheme.display1,
                        ),
                        Text(
                          '${restaurant.city}, ${restaurant.country}',
                          maxLines: 3,
                          style: Theme.of(context).textTheme.display2,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
