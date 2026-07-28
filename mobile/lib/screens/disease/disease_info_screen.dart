import 'package:flutter/material.dart';

class DiseaseInfoScreen extends StatelessWidget {
  const DiseaseInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Disease Information",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFF2E7D32),
                child: Icon(
                  Icons.coronavirus,
                  color: Colors.white,
                  size: 55,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Foot and Mouth Disease",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            infoCard(
              "Description",
              "Foot and Mouth Disease (FMD) is a highly contagious viral disease that affects cattle, buffalo, sheep, goats, and pigs. It spreads rapidly among livestock.",
            ),

            infoCard(
              "Common Symptoms",
              "• Fever\n"
              "• Blisters in mouth\n"
              "• Excessive salivation\n"
              "• Difficulty walking\n"
              "• Loss of appetite",
            ),

            infoCard(
              "Causes",
              "The disease is caused by the Foot-and-Mouth Disease Virus (FMDV) and spreads through infected animals, contaminated equipment, feed, or air.",
            ),

            infoCard(
              "Treatment",
              "There is no specific cure. Treatment mainly includes supportive care, hydration, proper nutrition, and preventing secondary infections.",
            ),

            infoCard(
              "Prevention",
              "• Regular vaccination\n"
              "• Farm hygiene\n"
              "• Quarantine infected animals\n"
              "• Restrict animal movement",
            ),

            infoCard(
              "Recovery Time",
              "Animals generally recover within 2–3 weeks with proper care.",
            ),

            const SizedBox(height: 25),
                        Card(
              color: Colors.red.shade50,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [

                    Icon(
                      Icons.warning,
                      color: Colors.red,
                      size: 40,
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Severity",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            "HIGH",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              color: Colors.orange.shade50,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Icon(
                      Icons.local_hospital,
                      color: Colors.orange,
                      size: 40,
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Text(
                        "Consult a veterinarian immediately if your animal "
                        "shows continuous fever, severe mouth ulcers, "
                        "difficulty walking, or refuses to eat.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Emergency contact feature coming soon!",
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.phone),
                label: const Text("Emergency Contact"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget infoCard(String title, String content) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 18),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}