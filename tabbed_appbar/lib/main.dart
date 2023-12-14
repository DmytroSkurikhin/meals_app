import 'package:flutter/material.dart';
import 'package:tabbed_appbar/page/first_page.dart';
import 'package:tabbed_appbar/page/second_page.dart';
import 'package:tabbed_appbar/page/third_page.dart';

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
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My set of quotes'),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(text: 'Easy way', icon: Icon(Icons.car_rental)),
              Tab(text: 'Computers', icon: Icon(Icons.computer)),
              Tab(text: 'Job', icon: Icon(Icons.man)),
            ]),
          ),
          body: TabBarView(
            children: [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
        ),
      );
}
