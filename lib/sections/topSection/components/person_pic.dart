import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 539, maxHeight: 540),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/person.jpg"),
      ),
    );
    //  Container(
    //   constraints: BoxConstraints(maxWidth: 539, maxHeight: 740),
    //   child: CircleAvatar(
    //     backgroundImage: AssetImage("assets/images/people.jpg"),
    // Card(
    //   shadowColor: Colors.amber,
    //   child: Container(
    //     constraints: BoxConstraints(maxWidth: 499, maxHeight: 500),
    //     child: Image.asset(
    //       "assets/images/person.jpg",
    //     ),
    //   ),
    // );
  }
}
