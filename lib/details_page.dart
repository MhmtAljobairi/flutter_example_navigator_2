import 'package:flutter/material.dart';
import 'package:flutter_application_navigator_example_2/user.dart';

class DetailsPage extends StatelessWidget {
  final User user;
  const DetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.network(
            user.image,
            height: 200,
            width: 200,
          ),
          Text(
            user.fullName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Text(
            user.emailAddress,
            style: TextStyle(color: Colors.grey, fontSize: 25),
          ),
        ]),
      ),
    );
  }
}
