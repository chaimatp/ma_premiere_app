import 'package:flutter/material.dart';
import 'anime_page.dart';

const List animesTest = [
  {'canonicalTitle': 'Death Note', 'episodeCount': 37},
  {'canonicalTitle': 'Hunter x Hunter', 'episodeCount': 148},
  {'canonicalTitle': 'Naruto', 'episodeCount': 220},
];

class ListePage extends StatefulWidget {
  const ListePage({super.key});
  @override
  State<ListePage> createState() => _ListePageState();
}

class _ListePageState extends State<ListePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animés')),
      body: ListView.builder(
        itemCount: animesTest.length,
        itemBuilder: (context, index) {
          final anime = animesTest[index];
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(anime['canonicalTitle']),
            subtitle: Text("${anime['episodeCount']} épisodes"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnimePage(
                    titre: anime['canonicalTitle'],
                    total: anime['episodeCount'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
