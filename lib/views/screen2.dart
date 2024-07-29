import 'package:flutter/material.dart';
import 'package:new_app/models/articles_model.dart';
import 'package:new_app/service/newsService.dart';
import '../widgets/news_tile.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key, required this.categoryName, required this.countryName}) : super(key: key);

  final String categoryName;
  final String countryName;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<ArticlesModel> data = [];

  @override
  void initState() {
    super.initState();
    getNewsByCategory(widget.categoryName,widget.countryName); // Corrected method call
  }

  Future<void> getNewsByCategory(String category,String country) async { // Adjusted method signature
    data = await NewsService().getNewsByCategory(category,country);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('News for  ${widget.categoryName}',style: TextStyle(fontSize: 20,color: Colors.orange[800]),),
      ),

      body:
      Container(decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.deepOrange,Colors.yellow,Colors.deepOrange],
       ),),
         child:ListView.builder(
         itemCount: data.length,
          itemBuilder: (context, index) {
          return NewsTile(articlesModel: data[index]);
        },
      ),
      ),
    );
  }
}