import 'package:flutter/material.dart';
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About ',style: TextStyle(fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.blue,Colors.green,],
      ),
    ),child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About News App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'News App is your go-to source for the latest news and updates from around the world.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'With News App, you can stay informed about current events, business news, sports highlights, entertainment, science, and technology breakthroughs.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Our team works tirelessly to bring you accurate and up-to-date news articles from reputable sources.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Download News App today and stay ahead of the curve!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      ),
    );
  }
}