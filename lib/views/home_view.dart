import 'package:flutter/material.dart';
import 'package:new_app/widgets/categories_list_view.dart';
import 'package:new_app/widgets/news_list_view.dart';
import '../models/country_model.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({Key? key, required this.countryName,}) : super(key: key);

  final Country countryName;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.orange,),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.orange,backgroundColor: Colors.black),
                  ),
                  cursorColor: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepOrange,Colors.yellow,Colors.deepOrange],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(country:countryName),),
            SliverToBoxAdapter(child: SizedBox(height: 20,),),
            NewsListView(country: countryName.countryName, category: 'general'),
          ],
        ),
      ),
    );
  }
}
