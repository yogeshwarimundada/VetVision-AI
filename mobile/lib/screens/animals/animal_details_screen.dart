import 'package:flutter/material.dart';
import 'edit_animal_screen.dart';

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
                size: 60,
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

            const SizedBox(height: 8),

            Text(
              breed,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    detailRow("Age", age),

                    const Divider(),

                    detailRow("Gender", "Male"),

                    const Divider(),

                    detailRow("Weight", "28 kg"),

                    const Divider(),

                    detailRow("Health Status", status),

                    const Divider(),

                    detailRow("Last Scan", "12 July 2026"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Vaccinations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                title: Text("Rabies"),
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                title: Text("DHPP"),
              ),
            ),

            const SizedBox(height: 25),

            // Scan Again Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Scan feature will be connected soon.",
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text("Scan Again"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2E7D32),
                  foregroundColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Edit Button
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
                label: const Text("Edit Details"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Delete Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.delete),
                label: const Text("Delete Animal"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Delete Animal"),
                        content: const Text(
                          "Are you sure you want to delete this animal?",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.pop(context);

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "Animal deleted successfully!",
                                  ),
                                ),
                              );

                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Delete",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(value),
      ],
    );
  }
}