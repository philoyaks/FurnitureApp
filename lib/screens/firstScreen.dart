import 'package:flutter/material.dart';
import 'package:furnitureapp/data.dart';
import 'package:furnitureapp/screens/secondPage.dart';
import 'package:furnitureapp/widgets/searchBar.dart';

import '../constants.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List types = ['All', 'Sofa', 'Dinning Chairs', 'stools'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgoundColor,
      appBar: AppBar(
        backgroundColor: kbackgoundColor,
        elevation: 0,
        title: Text('Furniture App'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          searchBar(),
          chooseFurnitureType(),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: kpadding * 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return FurnitureCardDisplay(
                        products: products[index],
                        index: index,
                      );
                    })
              ],
            ),
          )
        ],
      )),
    );
  }

  Container chooseFurnitureType() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
      height: 30,
      child: ListView.builder(
        itemCount: types.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(horizontal: kpadding / 2),
                    padding: EdgeInsets.symmetric(
                        horizontal: kpadding, vertical: kpadding / 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedIndex == index ? Colors.white24 : null,
                    ),
                    child: Text(
                      types[index],
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FurnitureCardDisplay extends StatelessWidget {
  final Products products;
  final int index;
  const FurnitureCardDisplay({
    Key key,
    this.products,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kpadding, vertical: 5),
      decoration: BoxDecoration(
          // color: Colors.blue,
          boxShadow: [kshadow], borderRadius: BorderRadius.circular(22)),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        title: products.description,
                        image: products.images,
                        products: products,
                      )));
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: 140,
              margin: EdgeInsets.only(right: 0, top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Colors.blueGrey : Colors.yellow[600],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
                top: 20,
                right: kpadding * 2,
                child: Hero(
                  tag: products.id,
                  child: Image.asset(
                    products.images,
                    height: 140,
                    width: 140,
                  ),
                )),
            Positioned(
                top: 45,
                left: 10,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 250,
                    height: 80,
                    child: Text(products.description))),
            Positioned(
              bottom: 0,
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Center(child: Text("${products.price}")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
