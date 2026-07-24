import 'package:flutter/material.dart';

class ScanHistoryScreen extends StatelessWidget {
  const ScanHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        title: const Text(
          "Scan History",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ScanHistoryCard(
            animalName: "Bruno",
            disease: "Healthy",
            date: "24 July 2026",
            status: "Healthy",
          ),

          SizedBox(height: 15),

          ScanHistoryCard(
            animalName: "Kitty",
            disease: "Skin Infection",
            date: "22 July 2026",
            status: "Treatment",
          ),

          SizedBox(height: 15),

          ScanHistoryCard(
            animalName: "Rocky",
            disease: "Fever",
            date: "18 July 2026",
            status: "Treatment",
          ),

          SizedBox(height: 15),

          ScanHistoryCard(
            animalName: "Lucy",
            disease: "Healthy",
            date: "15 July 2026",
            status: "Healthy",
          ),
        ],
      ),
    );
  }
}

class ScanHistoryCard extends StatelessWidget {
  final String animalName;
  final String disease;
  final String date;
  final String status;

  const ScanHistoryCard({
    super.key,
    required this.animalName,
    required this.disease,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final bool healthy = status == "Healthy";

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            Row(
              children: [

                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF2E7D32),
                  child: Icon(
                    Icons.pets,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        animalName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        disease,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),

                  decoration: BoxDecoration(
                    color: healthy
                        ? Colors.green.shade100
                        : Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    status,
                    style: TextStyle(
                      color:
                          healthy ? Colors.green : Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const Divider(height: 30),

            Row(
              children: [

                const Icon(
                  Icons.calendar_today,
                  size: 18,
                  color: Colors.grey,
                ),

                const SizedBox(width: 8),

                Text(
                  date,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 45,

              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Detailed report will be available soon.",
                      ),
                    ),
                  );
                },

                icon: const Icon(Icons.visibility),

                label: const Text("View Details"),

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2E7D32),
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