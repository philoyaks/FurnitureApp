import 'package:flutter/material.dart';
import 'package:furnitureapp/data.dart';

import '../constants.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String image;
  final Products products;
  DetailScreen({Key key, this.title, this.image, this.products})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    double h(double x) {
      return MediaQuery.of(context).size.height * 0.01 * x;
    }

    double w(double x) {
      return MediaQuery.of(context).size.width * 0.01 * x;
    }

    return Scaffold(
      backgroundColor: kbackgoundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        title: Text(
          'Details',
          style: TextStyle(fontFamily: 'WorkSans', color: Colors.black),
        ),
        actions: <Widget>[Icon(Icons.shopping_cart, color: Colors.black)],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: h(100) - 100,
              width: w(100),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(80)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  displayPicture(w, h),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: w(100) / 2.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        colorPick(w, h, Colors.blueGrey),
                        SizedBox(
                          width: 5,
                        ),
                        colorPick(w, h, Colors.red),
                        SizedBox(
                          width: 5,
                        ),
                        colorPick(w, h, Colors.teal),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kpadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: kpadding,
                        ),
                        Text('Nanme of the product used'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('50', style: TextStyle(color: Colors.yellow)),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            child: Text(
                          widget.products.description,
                          style: TextStyle(fontFamily: 'WorkSans'),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kpadding),
              padding: EdgeInsets.symmetric(horizontal: kpadding),
              height: h(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Chat',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'WorkSans'),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Add to Cart',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'WorkSans'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container colorPick(double w(double x), double h(double x), Color color) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.white, boxShadow: [kshadow]),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: kpadding / 6, vertical: kpadding / 6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }

  Container displayPicture(double w(double x), double h(double x)) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kpadding * 3),
      width: w(70),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: kpadding * 2),
            height: h(40),
            // width: w(70),
            decoration:
                BoxDecoration(color: Colors.grey[100], boxShadow: [kshadow]),
            child: Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle)),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              margin: EdgeInsets.only(top: kpadding * 2),
              // height: 300,
              height: 250,
              width: 250,
              child: Hero(
                tag: widget.products.id,
                child: Image.asset(
                  widget.image,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
