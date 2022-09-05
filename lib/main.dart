import 'package:flutter/material.dart';
import 'package:flutter_application_navigator_example_2/details_page.dart';
import 'package:flutter_application_navigator_example_2/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    users.add(User("Mohammad Ali", "m@m.com",
        "https://i.pinimg.com/originals/d9/56/9b/d9569bbed4393e2ceb1af7ba64fdf86a.jpg"));
    users.add(User("Ali Sameer", "ali@m.com",
        "https://i.pinimg.com/originals/d9/56/9b/d9569bbed4393e2ceb1af7ba64fdf86a.jpg"));
    users.add(User("Sami Khalid", "sami@m.com",
        "https://i.pinimg.com/originals/d9/56/9b/d9569bbed4393e2ceb1af7ba64fdf86a.jpg"));
  }

  handleViewDetails(User selectedUser) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsPage(user: selectedUser)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Home Page")),
      body: Container(
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, int index) {
              return ListTile(
                leading: CircleAvatar(child: Image.network(users[index].image)),
                title: Text(users[index].fullName),
                subtitle: Text(users[index].emailAddress),
                onTap: () {
                  handleViewDetails(users[index]);
                },
              );
            }),
      ),
    );
  }
}
