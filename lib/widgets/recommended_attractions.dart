import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellers_log/models/attraction_model.dart';
import 'package:travellers_log/services/data_services.dart';
import 'package:travellers_log/widgets/loading.dart';

class RecommendedAttractions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataServices data = Provider.of<DataServices>(context, listen: false);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 18.0),
      child: data.getAttractions('/places/5/attraction') == null
          ? Loading()
          : Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Recommended attractions',
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
                  height: 180.0,
                  child: Consumer<DataServices>(
                    builder: (context, data, child) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.attractions.length,
                      itemBuilder: (BuildContext context, index) {
                        Attraction attraction = data.attractions[index];
                        return Container(
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          width: 160.0,
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
                                      '${attraction.activity.imageUrl}',
                                      fit: BoxFit.cover,
                                      width: 160.0,
                                      height: 100.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  attraction.activity.name,
                                  maxLines: 3,
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                Text(
                                  '${attraction.state}, ${attraction.country}',
                                  maxLines: 2,
                                  style: Theme.of(context).textTheme.headline2,
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
