import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32.0),
              child: Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage(
                    "assets/profile.jpg",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                "Manthan Gupta",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "I am a Flutter App Developer \nstudying in Bennett University",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.black,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Posts",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                    Text(
                      "35",
                      style: TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0),
                  child: Column(
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text(
                        "500",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 64.0),
                  child: Column(
                    children: [
                      Text(
                        "Following",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text(
                        "500",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              height: 30.0,
              color: Colors.black,
            ),
            RaisedButton(
              elevation: 0,
              onPressed: () => print("Following"),
              child: Text(
                "Follow",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            )
          ],
        ),
      ),
    );
  }
}
