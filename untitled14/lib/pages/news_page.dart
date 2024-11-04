import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled14/viewModel/article_list_view_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Haberler',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),centerTitle: true,
      ),body: ListView.builder(
      itemCount: vm.viewModel.articles.length,
      itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
              Image.network(vm.viewModel.articles[index].urlToImage ??
                  'https://lh6.googleusercontent.com/Bu-pRqU_tWZV7O3rJ5nV1P6NjqFnnAs8kVLC5VGz_Kf7ws0nDUXoGTc7pP87tyUCfu8VyXi0YviIm7CxAISDr2lJSwWwXQxxz98qxVfMcKTJfLPqbcfhn-QEeOowjrlwX1LYDFJN'),
              Text(vm.viewModel.articles[index].title ?? ''),
            ],
          ),
        );
      },
    ),
    );
  }
}
