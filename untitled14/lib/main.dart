import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled14/pages/news_page.dart';
import 'package:untitled14/viewModel/article_list_view_model.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haberler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ArticleListViewModel(),
        child: const NewsPage(),
      ),
    );
  }
}