import 'package:flutter/material.dart';

class CategoriesProduct extends StatefulWidget {
  const CategoriesProduct({Key? key}) : super(key: key);

  @override
  State<CategoriesProduct> createState() => _CategoriesProductState();
}

class _CategoriesProductState extends State<CategoriesProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              image_location: 'images/cats/accessories.png',
              image_caption: 'Accessories',
            ),
            Category(
                image_location: 'images/cats/dress.png',
                image_caption: 'Dress',
            ),
            Category(
                image_location: 'images/cats/formal.png',
                image_caption: 'Formal',
            ),
            Category(
                image_location: 'images/cats/informal.png',
                image_caption: 'Informal',
            ),
            Category(
                image_location: 'images/cats/jeans.png',
                image_caption: 'Jeans',
            ),
            Category(
                image_location: 'images/cats/shoe.png',
                image_caption: 'Shoes',
            ),
            Category(
                image_location: 'images/cats/tshirt.png',
                image_caption: 'T-shirt',
            ),
          ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: null,
        child: Container(
          width: 110.0,
          height: 120.00,
          child: ListTile(
            title: Image.asset(image_location, width: 100.0, height: 50.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),);
  }
}

