import 'package:flutter/material.dart';
import 'package:my_portfolio/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:core';

//import 'package:auto_animated/auto_animated.dart';
//import 'package:outline_material_icons/outline_material_icons.dart';

const _url = 'https://www.facebook.com/shubhangini.manivesh';
const _url1 = 'https://www.linkedin.com/in/shubhangini-manivesh-15858b195/';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final tabs = [
    SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
                // width: MediaQuery.of(context).size.width * 4 / 7,
                width: 150,
                height: 150,
                // image: AssetImage('assets/android.png'),

                image: NetworkImage(
                    'https://scontent.flko7-1.fna.fbcdn.net/v/t1.6435-9/66185429_2344239225833372_7868642294025420800_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_ohc=ytF3VesYAzoAX80jJBr&_nc_oc=AQkD86yYyIQInou-PHgNCPNPGHR0lXqUAV5KkgM3s5dgLn3d7ZaU2ag-B_qvkAtE33g&_nc_ht=scontent.flko7-1.fna&oh=1b04ccce396a4c8509726a8f80bef54a&oe=608B9F7E')),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Shubhangini Manivesh",
              style: TextStyle(fontSize: 30, color: Colors.green[900]),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Hi! I am a 2nd year student persuing B.Tech in Electronics and Communication from Banasthali vidyapith. My home town is Patna, Bihar. During the lockdown days, I found my interest in technologies and software. I built a few small android apps using android studio and other small projects of arduino processing.org and python. I learn basics of flutter. I also got to learn adobe XD and photoshop. Apart from all these I enjoy sketching, painting, music, gardening and sports. ",
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    ),
    //Center(child: Text('project', style: TextStyle(fontSize: 30))),
    Center(
        child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            "Counter app ",
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.grey[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Roll a dice app',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Play piano app',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.green[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Image gallery app',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.cyan[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Calculator app',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.lime[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Tic-Tac-Toe game app',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Flip Out game app (Available on playstore)',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.blue[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Automatic Traffic Light Control model using Arduino',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.amber[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Paper piano',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.grey[300],
        ),
        // Container(
        //   padding: const EdgeInsets.all(8),
        //   child: const Text(
        //     'paper piano',
        //     style: TextStyle(fontSize: 20),
        //   ),
        //   color: Colors.purple[200],
        // ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Infinite mandala art pattern using processing.org',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.lightGreen[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text(
            'Harry Potter’s Jaaduyi Choga project using python',
            style: TextStyle(fontSize: 20),
          ),
          color: Colors.teal[300],
        ),
      ],
    )),
    Container(
      padding: EdgeInsets.all(50),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.pink,
      //     width: 3,
      //   ),
      //   borderRadius: BorderRadius.circular(10),
      // ),

      child: Column(
        children: [
          Center(
              child: Text(
            "Contact me at:",
            style: TextStyle(fontSize: 30),
          )),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Icon(Icons.label),

              SizedBox(
                width: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => Utils.openEmail(
                      toEmail: 'smanivesh@gmail.com',
                      subject: 'Hello World',
                      body: 'This world great!'),
                  child: Text('Email', style: TextStyle(fontSize: 20)),
                ),
              ),

              //  Text("cakfh"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.label),

              SizedBox(
                width: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _launchURL,
                  child: Text('Facebook', style: TextStyle(fontSize: 20)),
                ),
              ),

              //  Text("cakfh"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.label),

              SizedBox(
                width: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _launchURL1,
                  child: Text('LinkedIn', style: TextStyle(fontSize: 20)),
                ),
              ),

              //  Text("cakfh"),
            ],
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text("My Portfolio"),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.pink[200],
      ),
      backgroundColor: Colors.pink[50],
      body: tabs[_currentIndex],

      // drawer: Drawer(
      //   elevation: 20,
      //   child: Text(
      //     "Interests",
      //     style: TextStyle(
      //       fontSize: 50,
      //       color: Colors.pink[900],
      //     ),
      //   ),
      // ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Interests',
                style: TextStyle(fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.brown[400],
              ),
            ),
            ListTile(
              title: Text('Painting'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Sketching'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Listening music'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Singing'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Sports'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Gardening'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Traveling'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.pink[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Project',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contact',
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void _launchURL1() async => await canLaunch(_url1)
    ? await launch(_url1)
    : throw 'Could not launch $_url1';
