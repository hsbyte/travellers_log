import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellers_log/models/destination_model.dart';
import 'package:travellers_log/services/data_services.dart';
import 'package:travellers_log/widgets/loading.dart';

class TopDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataServices data = Provider.of<DataServices>(context, listen: false);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 18.0),
      child: data.getDestinations('/cities/10') == null
          ? Loading()
          : Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Top destinations',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      GestureDetector(
                        onTap: () => print('See All'),
                        child: Text(
                          'See All',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 210.0,
                  child: Consumer<DataServices>(
                    builder: (context, data, child) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.destinations.length,
                      itemBuilder: (BuildContext context, index) {
                        Destination destination = data.destinations[index];
                        return Container(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          width: 250.0,
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
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                      '${destination.imageUrl}',
                                      fit: BoxFit.cover,
                                      width: 250.0,
                                      height: 140.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  destination.city,
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                Text(
                                  destination.country,
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
