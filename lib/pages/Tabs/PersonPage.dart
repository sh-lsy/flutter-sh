import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  PersonPage({Key? key}) : super(key: key);

  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: const FractionalOffset(0.5, 0.9),
      children: [
        new CircleAvatar(
          backgroundImage: AssetImage('images/11.jpg'),
          radius: 100.0,
        ),
        new Positioned(
          top: 10,
          left: 60,
          child: Text(
            '1111',
            style: TextStyle(
              fontSize: 25,
              color: Colors.lightBlue,
            ),
          ),
        ),
        new Positioned(
          bottom: 10,
          right: 80,
          child: Text(
            '23333',
            style: TextStyle(
              fontSize: 25,
              color: Colors.lightBlue,
            ),
          ),
        )
      ],
    );
  }
}
