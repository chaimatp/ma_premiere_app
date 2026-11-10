import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  const AnimePage({super.key});

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  int vus = 0;
  final int total = 37;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animé')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Death Note',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text('Épisodes vus', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            Text(
              '$vus / $total',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24),
            LinearProgressIndicator(value: vus / total),
            if (vus == total)
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
                  onPressed: vus > 0
                      ? () {
                          setState(() {
                            vus--;
                          });
                        }
                      : null,
                  icon: const Icon(Icons.remove),
                  label: const Text('1'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    disabledBackgroundColor: Colors.grey,
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
                  onPressed: vus < total
                      ? () {
                          setState(() {
                            vus++;
                          });
                        }
                      : null,
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
