import 'package:flutter/material.dart';
import 'package:flutterbookinghotel/hotel.dart';

class DetailsScreen extends StatefulWidget {
  final Hotel hotel;

  const DetailsScreen({this.hotel});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.hotel.title),
//      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Hero(
                  tag: widget.hotel.imageUrl,
                  child: Image(image: AssetImage(widget.hotel.imageUrl),
                    fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                top: 50,
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white.withOpacity(0.6),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(widget.hotel.title, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5.0),
            child: Row(
              children: <Widget>[
                Text(widget.hotel.description,
                style: TextStyle(fontSize: 16.0),),
                SizedBox(width: 5.0,),
                Text('- Show in map',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text('English texts for beginners to practice reading and comprehension online and for free. Practicing your comprehension of written English will both improve your vocabulary and understanding of grammar and word order. The texts below are designed to help you develop while giving you an instant evaluation of your progress.',
            style: TextStyle(fontSize: 14.0, color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Price', style: TextStyle(fontSize: 16.0, color: Colors.blue),),
                      SizedBox(height: 10.0,),
                      Text('\$${widget.hotel.price}',style: TextStyle(fontSize: 16.0, color: Colors.blue)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Reviews', style: TextStyle(fontSize: 16.0, color: Colors.blue),),
                      SizedBox(height: 10.0,),
                      Row(
                        children: <Widget>[
                          Text('\$${widget.hotel.rating}',),
                          Icon(Icons.star, size: 13, color: Colors.blue,),
                          Icon(Icons.star, size: 13, color: Colors.blue,),
                          Icon(Icons.star, size: 13, color: Colors.blue,),
                          Icon(Icons.star, size: 13, color: Colors.blue,),
                          Icon(Icons.star_half, size: 13, color: Colors.blue,),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Recently booked', style: TextStyle(fontSize: 14.0, color: Colors.blue),),
                      SizedBox(height: 10.0,),
                      Text('2000',style: TextStyle(fontSize: 16.0, color: Colors.blue)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Aminities', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.directions_car,
                          size: 20.0,
                          color: Color(0xFF003AAB).withOpacity(0.8),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('parking', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.directions_car,
                          size: 20.0,
                          color: Color(0xFF003AAB).withOpacity(0.8),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('parking', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.directions_car,
                          size: 20.0,
                          color: Color(0xFF003AAB).withOpacity(0.8),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('parking', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.directions_car,
                          size: 20.0,
                          color: Color(0xFF003AAB).withOpacity(0.8),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('parking', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.directions_car,
                          size: 20.0,
                          color: Color(0xFF003AAB).withOpacity(0.8),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('parking', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.directions_car,
                          size: 20.0,
                          color: Color(0xFF003AAB).withOpacity(0.8),),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('parking', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ]),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xFF003AAB).withOpacity(0.6),
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(width: 40,),

                Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ]
                  ),
                  child: Center(
                    child: Text('Book now', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,
                    color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
