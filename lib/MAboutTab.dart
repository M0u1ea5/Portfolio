import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
// import 'package:google_fonts/google_fonts.dart';

class MAboutTab extends StatelessWidget {
  Future<void> _launchlinkedin() async {
    const url = 'https://www.linkedin.com/in/mouleaswar-shanmugam-747ba11b8/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchinstagram() async {
    const url = 'https://www.instagram.com/m0u1ea5/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchgmail() async {
    const url = 'mailto:warmouleas@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color.fromRGBO(21, 32, 43, 100.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/mypic.jpg'),
                ),
                SizedBox(
                  height: 5,
                ),

                //name
                Center(
                  child: Text("Mouleaswar Shanmugam",
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          fontSize: 27,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),

                //college
                Card(
                  elevation: 200,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.black45,
                  child: Center(
                    child: Text(
                      "\nI'm a Mechanical Engineering student in\n         SONA College Of Technology\n",
                      style: TextStyle(
                          // textStyle: Theme.of(context).textTheme.headline4,
                          color: Colors.yellowAccent,
                          fontSize: 19,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                //logo about_me

                //points
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 200,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.black45,
                  child: Center(
                    child: Text(
                      "\n✨ Competitive programmer at \n      Codechef,Codeforces,Atcoder etc..  \n\n✨ Hattrick winner in Intra college\n      "
                      "coding competitions."
                      "\n\n✨ Achieved 3rd in National level 2D\n     Animation Hackathon. \n\n✨ Winner in Inter college coding\n      competition twice. \n\n"
                      "✨ Learning Flutter SDK and DSAlgo. \n",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                //Contact
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.black,
                ),
                SizedBox(height: 5),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      "   CONTACT INFO 🔔‍‍",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                //contact info
                Row(
                  children: [
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: _launchlinkedin,
                      child: Container(
                        child: Image.asset(
                          'assets/linkedinlogo.png',
                          width: 100,
                          height: 45,
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    TextButton(
                      onPressed: _launchinstagram,
                      child: Container(
                        child: Image.asset(
                          'assets/instagramlogo.jpg',
                          width: 100,
                          height: 35,
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    TextButton(
                      onPressed: _launchgmail,
                      child: Container(
                        child: Image.asset(
                          'assets/gmaillogo.jpg',
                          width: 100,
                          height: 45,
                        ),
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
}
