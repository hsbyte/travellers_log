import 'package:flutter/material.dart';
import 'package:travellers_log/widgets/my_location.dart';

class FoodWhere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: Colors.black87, //change your color here
            ),
            backgroundColor: Colors.white,
            title: Container(
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Where do you want to go?',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MyLocation(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Use your location to discover and explore nearby places.',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'POPULAR RESTAURANTS',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return index < destinations.length
          //           ? Container(
          //               margin: const EdgeInsets.only(
          //                 left: 20.0,
          //                 right: 20.0,
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: <Widget>[
          //                   Text(
          //                     destinations[index].city,
          //                     style: Theme.of(context).textTheme.display4,
          //                   ),
          //                   Text(
          //                     '${destinations[index].stateProvince}, ${destinations[index].country}',
          //                     style: Theme.of(context).textTheme.display3,
          //                   ),
          //                 ],
          //               ),
          //             )
          //           : null;
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
