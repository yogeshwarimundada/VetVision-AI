import 'package:flutter/material.dart';
import '../animals/edit_animal_screen.dart';

class AnimalDetailsScreen extends StatelessWidget {
  final String name;
  final String breed;
  final String age;
  final String status;

  const AnimalDetailsScreen({
    super.key,
    required this.name,
    required this.breed,
    required this.age,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          "Animal Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2E7D32),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF2E7D32),
              child: Icon(
                Icons.pets,
                size: 70,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              breed,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            Card(
              child: Column(
                children: [

                  ListTile(
                    leading: const Icon(Icons.category),
                    title: const Text("Breed"),
                    subtitle: Text(breed),
                  ),

                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.cake),
                    title: const Text("Age"),
                    subtitle: Text(age),
                  ),

                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text("Health Status"),
                    subtitle: Text(status),
                  ),

                  const Divider(),

                  const ListTile(
                    leading: Icon(Icons.vaccines),
                    title: Text("Vaccination"),
                    subtitle: Text("Completed"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const EditAnimalScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text("Edit Animal"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}