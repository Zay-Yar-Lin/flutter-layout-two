import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Layout Example Two"),
          ),
          body: Column(
            children: <Widget>[
              FirstElement(),
              const SizedBox(height: 15),
              ImageView(),
              const SizedBox(height: 25),
              IconView(),
              const SizedBox(height: 10),
              Divider(color: Colors.black),
              About(),
              AboutText(),
            ],
          ),
        ));
  }
}

class FirstElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TitleText(),
        Image.asset(
          'images/adams.jpg',
          width: 100,
          height: 150,
        ),
      ],
    );
  }
}


class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
        TitleName(),
        const SizedBox(height: 10),
        Row(children: [
          Icon(Icons.location_on),
          Text("Los Angeles", textScaleFactor: 1.0)
        ]),
        const SizedBox(height: 20),
        Follow(),
        const SizedBox(height: 15),
        Post(),
      ],
    );
  }
}

class TitleName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 1.0),
      child: Center(
        child: Text('John McDonald',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class Follow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.green,
            onPressed: (){},        
              child: Text(
                'Follow',
                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold) ),
            ),
        ],
    ),
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildButtonWidget(Colors.black, '34', 'Posts'),
        const SizedBox(
          width: 13,
        ),
        buildButtonWidget(Colors.black, '1256', 'Followers'),
      ],
    );
  }
}

Column buildButtonWidget(Color color, String number, String label) {
  return Column(children: <Widget>[
    Text(
      number,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w400),
    ),
    Text(
      label,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w400),
    )
  ]);
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(child: 
        Image.asset(
          'images/betty.jpg',
          width: 70,
          height: 80,
        ),),
        Expanded(child: 
        Image.asset(
          "images/kelvin.jpg",
          width: 70,
          height: 80,
        ),),
        Expanded(child: 
        Image.asset(
          'images/laura.jpg',
          width: 70,
          height: 80,
        ),),
        Expanded(child: 
        Image.asset(
          "images/miller.jpg",
          width: 70,
          height: 80,
        ),),
        Expanded(child: 
        Image.asset(
          'images/roberts.jpg',
          width: 70,
          height: 80,
        ),),
      ],
    );
  }
}

Row IconView() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(Icons.battery_full),
      Icon(Icons.bookmark),
      Icon(Icons.find_in_page),
      Icon(Icons.near_me),
      Icon(Icons.brightness_medium)
    ],
  );
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 17.0, bottom: 5.0,left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
        ],
      ),
    );
  }
}

class AboutText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13.0, right: 8.0, left: 8.0),
      child: Center(
        child: Text(
            "John James McDonald (21 July 1869 – 19 June 1934), Australian politician, was a Member of the Western Australian Legislative Born in East Ballarat, Victoria on 21 July 1869, John McDonald was the son of cordial manuf",
            style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}