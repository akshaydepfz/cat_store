import 'package:cat_store/configuration.dart';
import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final String catName;
  final String Location;
  final String catImage;
  final int heroTag;
  final Color bacgroundkColor;

  const ItemView(
      {required this.catName,
      required this.Location,
      required this.catImage,
      required this.heroTag,
      required this.bacgroundkColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: bacgroundkColor,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        Text(
                          "100% cage free Cattery",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Cats Are fully Vaccinated And Dewormed",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Providing Healthy & Breed Certified Cats",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Online order & Home Delivery All Over India",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    color: Colors.transparent,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.ios_share),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 100.0,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: heroTag,
                child: Image.asset(
                  catImage,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          catName,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.male,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Amarican Breed",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "2 years old",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.teal,
                        ),
                        Text(
                          Location,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                boxShadow: shadowList,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.teal,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          "Adoption",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
