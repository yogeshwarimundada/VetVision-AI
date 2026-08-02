import 'package:flutter/material.dart';
import '../disease/disease_info_screen.dart';

class AIPredictionScreen extends StatelessWidget {
  const AIPredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        title: const Text(
          "AI Prediction",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const Icon(
              Icons.psychology,
              color: Color(0xFF2E7D32),
              size: 90,
            ),

            const SizedBox(height: 20),

            const Text(
              "AI Analysis Complete",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),

                child: Column(
                  children: [

                    ListTile(
                      leading: Icon(
                        Icons.coronavirus,
                        color: Colors.red,
                      ),
                      title: Text("Detected Disease"),
                      subtitle: Text(
                        "Foot and Mouth Disease",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.analytics,
                        color: Colors.blue,
                      ),
                      title: Text("Confidence"),
                      subtitle: Text(
                        "96%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.warning,
                        color: Colors.orange,
                      ),
                      title: Text("Severity"),
                      subtitle: Text(
                        "Moderate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                                        const Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.medical_services,
                        color: Colors.green,
                      ),
                      title: Text("Recommended Action"),
                      subtitle: Text(
                        "Consult a veterinarian within 24 hours.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.medication,
                        color: Colors.purple,
                      ),
                      title: Text("Suggested Medicine"),
                      subtitle: Text(
                        "Veterinary Antibiotics (As Prescribed)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.teal,
                      ),
                      title: Text("Estimated Recovery"),
                      subtitle: Text(
                        "7 - 10 Days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DiseaseInfoScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.menu_book),
                label: const Text("View Disease Details"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Prediction report saved successfully!",
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.save),
                label: const Text("Save Report"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2E7D32),
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
                icon: const Icon(Icons.refresh),
                label: const Text("Scan Again"),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}