import 'package:flutter/material.dart';
import 'package:new_app/models/category_model.dart';
import 'package:new_app/models/country_model.dart';
import 'package:new_app/views/screen2.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({Key? key, required this.category, required this.country}) : super(key: key);

  final CategoryModel category;
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(categoryName: category.categoryName, countryName: country.countryName,),),);
        },
        child: Container(
          height: 120,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(category.categoryName,style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
