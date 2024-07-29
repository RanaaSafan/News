import 'package:flutter/material.dart';
import 'package:new_app/views/about.dart';
import 'package:new_app/views/home_view.dart';
import 'package:new_app/views/settings.dart';
import '../models/country_model.dart';

class Screen1 extends StatelessWidget {
   Screen1({Key? key}) : super(key: key);

  final List<Country> countries = [
    Country(name: 'United States',countryName:'us',flagImageUrl: 'assets/us.jpeg',),
    Country(name: 'Canada',countryName:'ca',flagImageUrl: 'assets/canada.jpeg',),
    Country(name: 'Egypt ',countryName:'eg',flagImageUrl: 'assets/egypt.jpeg',),
    Country(name: 'China ',countryName:'ch',flagImageUrl: 'assets/china.jpeg',),
    Country(name: 'Italy ',countryName:'it',flagImageUrl: 'assets/italy.jpeg',),
    Country(name: 'India ',countryName:'in',flagImageUrl: 'assets/india.jpeg',),
    Country(name: 'Australia ',countryName:'au',flagImageUrl: 'assets/austraila.jpeg',),
    Country(name: 'Brazil ',countryName:'br',flagImageUrl: 'assets/brazil.jpeg',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Cloud",style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text('My profile', style: TextStyle(color: Colors.orange, fontSize: 24,),),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text('Home',style: TextStyle(color: Colors.black),),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1(),),);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              title: Text('Settings',style: TextStyle(color: Colors.black),),
              onTap: () {
                //Navigator.pop(context); // Close drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),),);
              },
            ),
            ListTile(
              leading: Icon(Icons.info,color: Colors.black,),
              title: Text('About',style: TextStyle(color: Colors.black),),
              onTap: () {
              //   Navigator.pop(context); // Close drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen(),),);
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange,Colors.yellow,],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
            ),
            itemCount: countries.length,
            itemBuilder: (context, index) {
              return GridTile(
                child: InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeViews(countryName: countries[index])));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          countries[index].flagImageUrl,
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          countries[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
