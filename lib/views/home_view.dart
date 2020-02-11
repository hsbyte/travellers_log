import 'package:flutter/material.dart';
import 'package:travellers_log/widgets/nearby_places.dart';
import 'package:travellers_log/widgets/popular_restaurants.dart';
import 'package:travellers_log/widgets/recommended_attractions.dart';
import 'package:travellers_log/widgets/top_destinations.dart';
import 'package:travellers_log/widgets/routes.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final double _percentHeight = 0.90;
    int _selectedIndex = 0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.cyan[200],
        selectedLabelStyle: TextStyle(
          fontSize: 12.0,
          letterSpacing: 0.25,
        ),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          print('Navigator: ${views[index]}');
          Navigator.pushNamed(context, views[index]);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            title: Text('Hotels'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airport_shuttle),
            title: Text('Trips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text('Places'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('Foods'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFA9917),
        onPressed: null,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32.0,
        ),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              pinned: true,
              expandedHeight: _size.height * _percentHeight,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Traveller\'s Log'),
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/hero.png',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: _size.height * 0.1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: _size.width * 0.50,
                              child: Text(
                                'Start your own travel journal and share it family and friends.',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: _size.width * 0.80,
                              height: 48.0,
                              child: TextField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white60,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100.0)),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Where do you want to go?',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: _size.height * 0.5,
                            ),
                            Text(
                              'Traveller\'s Log',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'by Arnold F. Haban',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 250.0,
              delegate: SliverChildListDelegate([
                NearbyPlaces(),
                // RecentSearches(),
              ]),
            ),
            SliverToBoxAdapter(
              child: TopDestinations(),
            ),
            SliverToBoxAdapter(
              child: RecommendedAttractions(),
            ),
            SliverToBoxAdapter(
              child: PopularRestaurants(),
            ),
          ],
        ),
      ),
    );
  }
}
