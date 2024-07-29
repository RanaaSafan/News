import 'package:dio/dio.dart';
import 'package:new_app/models/articles_model.dart';

class NewsService{
  final Dio dio=Dio();
  Future<List<ArticlesModel>> getNewsByCategory(String category,String country) async {
    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=055962baf73440839a6b203b1327cc0e");

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticlesModel> articlesList = [];

    for (var article in articles) {
      ArticlesModel articlesModel = ArticlesModel(
        image: article["urlToImage"],
        title: article["title"],
        subTitle: article["description"],
      );
      articlesList.add(articlesModel);
    }
    return articlesList;
  }

}