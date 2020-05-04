import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterbookinghotel/hotel.dart';
import 'package:flutterbookinghotel/hotel_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem (
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.search),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),

      appBar: AppBar(
        title: Text('Booking Hotel'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Hello Thomas', style: TextStyle(fontSize: 20.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 5.0, ),
                    Text('Find Your Hotel', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0, 4),
                        blurRadius: 10.0)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          // window for search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEFEDEE),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10),
                    blurRadius: 10.0),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.search, size: 20.0, color: Colors.grey,),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.79,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for Hotel',
                        hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0,
                            color: Colors.grey.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // popular hotel

          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Popular Hotel', style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.w600),),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 220,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, index) {
                Hotel hotel = hotels[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => DetailsScreen(hotel: hotel),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 140.0,
                            width: 170.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)
                              ),
                              image: DecorationImage(image: AssetImage(hotels[index].imageUrl),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(hotels[index].title, style: TextStyle(fontSize: 16.0),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Text(hotels[index].description, style: TextStyle(fontSize: 13.0, color: Colors.grey ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('\$${hotels[index].price} / night',
                                style: TextStyle(color: Colors.blue),),

                                Row(
                                  children: <Widget>[
                                    Text('${hotels[index].rating}', ),
                                    Icon(Icons.star,
                                    color: Colors.blue,
                                    size: 16.0,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  );
                },
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Hotel Packages', style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.w600),),
                Text('view all', style: TextStyle(fontSize: 18.0, color: Colors.blue),),
              ],
            ),
          ),
          SizedBox(height: 20.0,),

          Column(
            children: <Widget>[
              _holtelPackage(0),
              SizedBox( height: 20,),
              _holtelPackage(1),
              SizedBox( height: 20,),
              _holtelPackage(2),
              SizedBox( height: 20,),
              _holtelPackage(3),
              SizedBox( height: 20,),
              _holtelPackage(4),
              SizedBox( height: 20,),
              _holtelPackage(5),
              SizedBox( height: 20,),
              _holtelPackage(6),
            ],
          ),

        ],
      ),
    );
  }
}

_holtelPackage(int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: 150.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 130.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(image: AssetImage(hotels[index].imageUrl),
                fit: BoxFit.cover),
              ),
            ),
          ),

          Positioned(
             top: 15,
            left: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(hotels[index].title, style: TextStyle(fontSize: 18.0 ,
                fontWeight: FontWeight.w400),),
                Text(hotels[index].description, style: TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w200),),
                SizedBox(height: 5.0,),
                Text('\$${hotels[index].price} / night',
                style: TextStyle(fontSize: 16, color: Colors.blue),),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.directions_car,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 10.0,),

                    Icon(
                      Icons.hot_tub,
                      color: Colors.orange,
                    ),

                    SizedBox(width: 10.0,),

                    Icon(
                      Icons.local_airport,
                      color: Colors.orange,
                    ),

                    SizedBox(width: 10.0,),

                    Icon(
                      Icons.wifi,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 50,
            left: 300,
            child: Center(
              child: Transform.rotate(angle: pi/-2,
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                       spreadRadius: 10.0,
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Center(

                    child: Text('Book Now', style: TextStyle(fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: .2,
                    ),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}