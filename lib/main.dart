import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//components import
import 'package:app_project/components/MenuDrawer.dart';
import 'package:app_project/components/HorizontalSlider.dart';
import 'package:app_project/components/products.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
  )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var image_carousel = new Container(
      height: 230.0,
      child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
                  AssetImage('images/c1.jpg'),
                  AssetImage('images/m1.jpeg'),
                  AssetImage('images/m2.jpg'),
                  AssetImage('images/w1.jpeg'),
                  AssetImage('images/w3.jpeg'),
                  AssetImage('images/w4.jpeg'),
                ],
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
      ),
    );


    return Scaffold(

      appBar: new AppBar(
          elevation: 0.2,
          backgroundColor: Colors.pink,
          title: Text('Grocery App'),
          actions: <Widget>[
            new IconButton(onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
            new IconButton(onPressed: null, icon: Icon(Icons.shopping_cart, color: Colors.white))
          ],

      ),

      // SideSlider


      drawer: new Drawer(

        child: MenuDrawer()

      ),

      body: new ListView(
        children: <Widget>[



          //image carousel
          image_carousel,

          //padding widget
          new Padding (padding: const EdgeInsets.all(15.0),

          child: new Text('Category'),),

          //Horizontal  Categories icons
          CategoriesProduct(),

          new Padding (padding: const EdgeInsets.all(20.0),

          child: new Text('Products'),),

          //grid view
          Container(
            height: 270.0,
            child: Products(),
          ),
        ],
      ),

      // body: new ListView(
      //   children: <Widget>[
      //     Image.asset('images/m1.jpeg'),
      //   ],
      // ),



        // List<String> images = [
        // "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
        // "https://wallpaperaccess.com/full/2637581.jpg",
        // "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
        // ];


        // Widget PageView.builder(
        //     itemCount: 2,
        //     pageSnapping: true,
        //     itemBuilder: (context,pagePosition){
        //       return Container(
        //           margin: EdgeInsets.all(10),
        //           child: Image.network(images[pagePosition]));
        //     })



    );
  }
}


