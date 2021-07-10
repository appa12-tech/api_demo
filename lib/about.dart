import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://scontent.fpkr1-1.fna.fbcdn.net/v/t1.6435-9/45496841_586223485114160_2141636569717538816_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=174925&_nc_ohc=20R6iUHgLEoAX99JE3k&_nc_ht=scontent.fpkr1-1.fna&oh=2c9dc346dd4edc5a67993d7fcc9efd24&oe=60ED424F'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Vishal Thapa",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Icon(Icons.place),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Address : Pokhara Nepal",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.mail),
                      onPressed: () {
                        _launchUrl();
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Email : 17bcs3287.cu@gmail.com",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.school),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Education : BE CSE ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.computer),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Programming : C,C++,Python,Flutter",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Future _launchUrl() async {
    await launch("mailto:abc@gmail.com");
  }
}
