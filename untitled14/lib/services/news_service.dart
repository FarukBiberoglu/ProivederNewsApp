import 'dart:convert';

import 'package:untitled14/model/articles.dart';
import 'package:http/http.dart'as http;
import 'package:untitled14/model/news.dart';

class NewsServices {
  Future<List<Articles>> fetchNews(String category) async {
    String apiKey = 'API KEY ';
   String url= 'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$apiKey';
    Uri uri = Uri.parse(url);
    final response =  await http.get(uri);
   if (response.statusCode == 200) {
     final result = json.decode(response.body);
     News news = News.fromJson(result);
     return news.articles ?? [];
   }
   throw Exception('Bad Request');
  }
  }
