import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.2,
          backgroundColor: Colors.blue,
          title: Text('Shopping App'),
          actions: <Widget>[
            new IconButton(
                onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
            new IconButton(
                onPressed: null,
                icon: Icon(Icons.shopping_cart, color: Colors.white))
          ],
        ),
        body: new ListView(children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                        leading: new Text(
                          widget.product_detail_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        title: new Row(
                          children: <Widget>[
                            Expanded(
                                child: new Text(
                              "\$${widget.product_detail_old_price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            )),
                            Expanded(
                                child: new Text(
                              "\$${widget.product_detail_price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            )),
                          ],
                        )))),
          ),
          Row(
            children: <Widget>[

              //size button
              Expanded(
                  child: MaterialButton(
                      onPressed: null,
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Size"),
                          ),
                          Expanded(child: new Icon(Icons.arrow_drop_down))
                        ],
                      )
                  )
              ),

              //color button
              Expanded(
                  child: MaterialButton(
                      onPressed: null,
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Color"),
                          ),
                          Expanded(child: new Icon(Icons.arrow_drop_down))
                        ],
                      )
                  )
              ),

              // Qty button
              Expanded(
                  child: MaterialButton(
                      onPressed: null,
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Qty"),
                          ),
                          Expanded(child: new Icon(Icons.arrow_drop_down))
                        ],
                      )
                  )
              ),


            ],
          ),


          Row(
            children: <Widget>[
              //Buy now button
              Expanded(
                  child: MaterialButton(
                      onPressed: null,
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: new Text("Buy Now"),
                  ),
              ),

            ],
          ),
        ]));
  }
}
