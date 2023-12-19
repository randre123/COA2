import 'package:cv/login_home.dart';
import 'package:cv/skill.dart';
import 'package:flutter/material.dart';
import 'PersonalInfo.dart';
import 'education.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(30, 40, 30, 0),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Curriculum Vitae',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 5, 97, 136),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 50, 0),
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/jay.jpg',
                    ),
                    radius: 70.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Randre Cabansag",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "BSIT 4",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  color: Color.fromARGB(153, 255, 0, 0),
                ),
                Text(
                  "Contact Information:",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.mail,
                        color: Color.fromARGB(255, 121, 4, 4)), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      'randrecabansag33@gmail.com',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.call,
                        color: Color.fromARGB(255, 1, 75, 20)), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      '09664972263',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.g_mobiledata,
                        color: Color.fromARGB(255, 41, 131, 6)), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      'Randre Cabansag',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.facebook,
                        color: Color.fromARGB(255, 13, 81, 170)), // Replace with your desired icon
                    SizedBox(
                        width: 8.0), // Add some space between the icon and text
                    Text(
                      'Randre Cabansag',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
                Divider(
                  height: 50,
                  color: Color.fromARGB(153, 255, 0, 0),
                ),
                SizedBox(
                  width: 20,
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => personal(),
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.person_outlined,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 15),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => skills(),
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 15),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => education(),
                          ),
                        )
                      },
                      icon: Icon(
                        Icons.cast_for_education,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),

                //CenteredIconButton(width: 15,),
                //SizedBox_CenteredIconButton(width: 15,),
              ],
            ),
          ),
        ));
  }
}
