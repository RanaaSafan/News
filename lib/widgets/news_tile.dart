import 'package:flutter/material.dart';
import 'package:new_app/models/articles_model.dart';
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});

 final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articlesModel.image!=null?Image.network(articlesModel.image!,height: 200,width: double.infinity,fit: BoxFit.fill,):Image.asset("assets/tech.jpeg"),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(articlesModel.title,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 8,
        ),
        Text("${articlesModel.subTitle!=null?articlesModel.subTitle!:" "}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize:14 )),

      ],
    );
  }
}