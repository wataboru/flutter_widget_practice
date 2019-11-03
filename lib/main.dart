import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Palova Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Palova(),
      );
}

class Palova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        ),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          stars,
          Text(
            '170 Reviewers',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  Text('PREP:'),
                  Text('25 min'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.timer,
                    color: Colors.green[500],
                  ),
                  Text('COOK:'),
                  Text('1 hr'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.restaurant,
                    color: Colors.green[500],
                  ),
                  Text('FEEDS:'),
                  Text('4-6'),
                ],
              ),
            ],
          ),
        ));

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          Text('titleText'),
          Text('subTitle'),
          ratings,
          iconList,
        ],
      ),
    );

    final alarmCard = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'xxxxxx',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('yyyyyy'),
            leading: Icon(
              Icons.restaurant,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              '03-1234-5678',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text(
              'example@example.com',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          )
        ],
      ),
    );

    final sample = Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 375,
              child: leftColumn,
            ),
          ],
        ),
        alarmCard,
      ],
    );

    return Scaffold(
      body: Center(
        child: sample,
      ),
    );
  }
}
