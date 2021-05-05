import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  List items = [
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
    {
      'pic': 'assets/images/fake_pic.jpg',
      'title': 'Salmon bowl',
      'price': '\$25.30'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.menu_open),
              color: Colors.white,
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.menu), color: Colors.white, onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: width,
            height: 150,
            color: Colors.lightGreen,
            child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                      children: [
                        TextSpan(
                          text: 'Delicious ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Food',
                        )
                      ]),
                )),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: width,
                  height: 70,
                  color: Colors.lightGreen,
                ),
                Positioned(
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(80))),
                    height: 350,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 20, left: 50),
                      itemCount: items.length,
                      itemBuilder: (ctx, index) {
                        var item = items[index];
                        return ListTile(
                          leading: Image.asset(item['pic']),
                          title: Text(item['title']),
                          subtitle: Text(item['price']),
                          trailing: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                  child: Icon(Icons.card_travel),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
