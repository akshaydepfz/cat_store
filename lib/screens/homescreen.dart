import 'package:cat_store/customListView/customList.dart';
import 'package:cat_store/screens/itemViewScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('kozhikode'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar()
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search pet to adopt'),
                  Icon(Icons.settings)
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),
            CustomList(
              color: Colors.blueGrey.shade300,
              petName: 'Sola',
              image: 'images/pet-cat1.png',
              location: 'Vadakara',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemView(
                      catImage: 'images/pet-cat1.png',
                      catName: 'Sola',
                      Location: 'vadakara',
                      heroTag: 1,
                      bacgroundkColor: Colors.blueGrey.shade300,
                    ),
                  ),
                );
              },
              heroTag: 1,
            ),
            CustomList(
              heroTag: 2,
              color: Colors.orange.shade100,
              petName: 'Cute kitty',
              image: 'images/pet-cat4.png',
              location: 'koyilandi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemView(
                      catImage: 'images/pet-cat4.png',
                      catName: 'Cute kitty',
                      Location: 'Koyilandi',
                      heroTag: 2,
                      bacgroundkColor: Colors.orange.shade100,
                    ),
                  ),
                );
              },
            ),
            CustomList(
              heroTag: 3,
              color: Colors.grey.shade400,
              petName: 'Black kitty',
              image: 'images/pet-cat3.png',
              location: 'Payyoli',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemView(
                      catImage: 'images/pet-cat3.png',
                      catName: 'Black kitty',
                      Location: 'Payyoli',
                      heroTag: 3,
                      bacgroundkColor: Colors.grey.shade400,
                    ),
                  ),
                );
              },
            ),
            CustomList(
              heroTag: 4,
              color: Colors.orange.shade100,
              petName: 'Orange sweede',
              image: 'images/pet-cat2.png',
              location: 'Thikkodi',
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemView(
                        catImage: 'images/pet-cat2.png',
                        catName: 'Orange sweede',
                        Location: 'Thikkodi',
                        heroTag: 4,
                        bacgroundkColor: Colors.orange.shade100,
                      ),
                    ),
                  );
                }
              },
            ),
            CustomList(
              heroTag: 5,
              color: Colors.brown.shade200,
              petName: 'Brown Haired',
              image: 'images/pet-cat5.png',
              location: 'Vadakara',
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemView(
                        catImage: 'images/pet-cat5.png',
                        catName: 'Brown Haired',
                        Location: 'Vadakara',
                        heroTag: 5,
                        bacgroundkColor: Colors.brown.shade200,
                      ),
                    ),
                  );
                }
              },
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
