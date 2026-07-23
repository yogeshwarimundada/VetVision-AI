import 'add_animal_screen.dart';
import 'package:flutter/material.dart';
import 'animal_details_screen.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          "My Animals",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2E7D32),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AnimalCard(
            name: "Bruno",
            breed: "Labrador Retriever",
            age: "4 Years",
            status: "Healthy",
          ),

          const SizedBox(height: 15),

          AnimalCard(
            name: "Kitty",
            breed: "Persian Cat",
            age: "2 Years",
            status: "Skin Infection",
          ),

          const SizedBox(height: 15),

          AnimalCard(
            name: "Rocky",
            breed: "German Shepherd",
            age: "3 Years",
            status: "Under Treatment",
          ),
        ],
      ),

     floatingActionButton: FloatingActionButton(
  backgroundColor: const Color(0xFF2E7D32),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AddAnimalScreen(),
      ),
    );
  },
  child: const Icon(Icons.add, color: Colors.white),
),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final String name;
  final String breed;
  final String age;
  final String status;

  const AnimalCard({
    super.key,
    required this.name,
    required this.breed,
    required this.age,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => AnimalDetailsScreen(
                name: name,
                breed: breed,
                age: age,
                status: status,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xFF2E7D32),
                child: Icon(
                  Icons.pets,
                  color: Colors.white,
                  size: 35,
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text("Breed: $breed"),
                    Text("Age: $age"),

                    const SizedBox(height: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: status == "Healthy"
                            ? Colors.green.shade100
                            : Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: status == "Healthy"
                              ? Colors.green
                              : Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ),
      ),
    );
  }
}