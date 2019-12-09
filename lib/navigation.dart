import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
);

var k=Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Container(
      padding: EdgeInsets.all(20),
      color: Colors.green,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.fastfood,
          ),
          Text('Prep'),
          Text('25 min'),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(20),
      color: Colors.green,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.timer,
          ),
          Text('Cook'),
          Text('60 min'),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(20),
      color: Colors.green,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.speaker,
          ),
          Text('Feeds'),
          Text('5 '),
        ],
      ),
    )
  ],
);

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
              ),
            Expanded(
                child:Image(
                  image: NetworkImage('https://i.guim.co.uk/img/media/135d741c5d76087606dff47617a6e356b8539d0d/0_129_3861_2317/master/3861.jpg?width=700&quality=85&auto=format&fit=max&s=1c19dd35cf6a3fed836df843a7e4c10a'),
                )
            ),
             Text('Strawberry Pavlova',
               textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w800,
                 fontFamily: 'Roboto',
                 letterSpacing: 0.5,
                 fontSize: 20,
               ),
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Text(' Pavlova is a dessert popular in New Zealand and Australia. It’s not as common here in the states, but I hope to help change that! A texture freak’s dream come true, pavlova is made from egg whites that are slowly baked in a relatively cool oven. The egg whites take on a chewy-crisp texture on top, a soft marshmallow texture inside, and a crunchy crisp texture around the edges. That’s three completely different textures in one single bite. The crunchy edges are just like meringue cookies.',

              ),
            ),
            Container(
              color: Colors.amberAccent,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  stars,
                  Text(
                    '170 Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Colors.cyan,
              child: k,
            ),

          ],

      )

    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
            ),
            Expanded(
                child:Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP-9Esy9rbrCP7zGMn2-mPa_F-abO4gigQHfiKI_ZZYBUBgPu6&s'),
                )
            ),
            Text('Dominos Pizza',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Text(" Domino's Pizza, Inc., branded as Domino's, is an American multinational pizza restaurant chain founded in 1960. The corporation is headquartered at the Domino's Farms Office Park in Ann Arbor, Michigan. ",

              ),
            ),
            Container(
              color: Colors.amberAccent,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  stars,
                  Text(
                    '160 Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Colors.cyan,
              child: k,
            ),

          ],

        )

    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
            ),
            Expanded(
                child:Image(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5ofpjurPYzRKgAhjyMZ2UkZGQPlJIWGYbLp-1StZy2w8A1kPL&s'),
                  )
            ),
            Text('French Fries',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Text(" French fries, or simply fries, chips, finger chips, or french-fried potatoes, are batonnet or allumette-cut deep-fried potatoes. ",

              ),
            ),
            Container(
              color: Colors.amberAccent,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  stars,
                  Text(
                    '160 Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Colors.cyan,
              child: k,
            ),

          ],

        )

    );
  }
}