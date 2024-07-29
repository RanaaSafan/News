import 'package:flutter/material.dart';
import 'package:new_app/models/category_model.dart';
import 'package:new_app/models/country_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key, required this.country});

final Country country;
  final List<CategoryModel> categories=const[
    CategoryModel(image: 'assets/general.jpeg',categoryName:'general',),
    CategoryModel(image: 'assets/bussiness.jpeg',categoryName:'Business',),
    CategoryModel(image: 'assets/manage.jpeg',categoryName:'entertainment',),
    CategoryModel(image: 'assets/health.jpeg',categoryName:'health',),
    CategoryModel(image: 'assets/sports.jpeg',categoryName:'Sports',),
    CategoryModel(image: 'assets/science.jpeg',categoryName:'Science',),
    CategoryModel(image: 'assets/tech.jpeg',categoryName:'Technology',),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:120,
      child: ListView.builder(
          scrollDirection:Axis.horizontal,
          itemCount:categories.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: () {
              },
              child: categoryCard(category: categories[index],country: country,),
            );
            //return categoryCard(category:categories[index],);
          }
          ),
    );
  }
}
