import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(fontSize: 30),),
      ),
      body: Container(
           decoration: BoxDecoration(
            gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [Colors.blue,Colors.green,],
              ),
        ),
       child: Padding(
         padding: EdgeInsets.all(16.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'News App Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to News App Settings!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'In this section, you can customize your News App experience according to your preferences.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'You can choose your preferred language, set notification preferences, and personalize your news feed to see the topics that interest you the most.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Feel free to explore the settings and tailor News App to suit your needs.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      ),
    );
  }
}