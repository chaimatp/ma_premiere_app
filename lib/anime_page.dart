import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  final String titre;
  final int total;
  const AnimePage({super.key, required this.titre, required this.total});

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  int vus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animé')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text( widget.titre,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const Text('Épisodes vus', style: TextStyle(color: Colors.grey)),

            const SizedBox(height: 16),

            Text(
              '$vus / ${widget.total}',
              style: Theme.of(context).textTheme.displayMedium,
            ),

            const SizedBox(height: 24),

            LinearProgressIndicator(value: vus / widget.total),

            if (vus == widget.total)
              const Text(
                'Terminé !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

            const SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // À vous : le bouton -1
                ElevatedButton.icon(
                  onPressed: () {
                    if (vus > 0) {
                      setState(() {
                        vus--;
                      });
                    }
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('1'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                ),

                // À vous : le bouton Zéro
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      vus = 0;
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Zéro'),
                ),

                //+1
                ElevatedButton.icon(
                  onPressed: () {
                    if (vus < widget.total) {
                      setState(() {
                        vus++;
                      });
                    }
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('1'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
