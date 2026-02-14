import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
    FirstPage({super.key});

  List<Post> posts = [
    Post(id: 1, title: "Chama arudi Simba", subtitle: "Balaa jipya msimbazi", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoJi0VmQ1LUh826jSu5RP3NoIgMrvzdmTOBA&s"),
    Post(id: 2,title: "Moshi bado mweusi bodi ya mikopo", subtitle: "Wanafunzi wahaha", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgOxVjw5JyisSRG2mOE6XRu7POmfvhqVLRaw&s"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First page")),
      body: ListView.builder(
         itemBuilder: (context, int i){
           return Card(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(posts[i].image_url),
                  Text(posts[i].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text(posts[i].subtitle),
                ],
           ),
           );
         },
        itemCount: posts.length,
      ),
    );
  }
}

class Post{
  final int id;
  final String title;
  final String subtitle;
  final String image_url;

  Post({required this.id,
    required this.title,
    required this.subtitle,
    required this.image_url});
}

