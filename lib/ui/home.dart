import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        color: Colors.deepOrangeAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Margherita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Mozzarella, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 20.0,
              color: Colors.white70,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Marinara",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tomato, Garlic",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            PizzaImageWidget(),
            OrderButton(),
          ],
        ),
      ),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset =
        AssetImage('images/dancing-gifs-transparent-20.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.yellow[400],
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert );
  }
}
