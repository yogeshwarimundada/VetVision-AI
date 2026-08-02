import 'package:flutter/material.dart';
import '../disease/disease_info_screen.dart';

class ScanResultScreen extends StatelessWidget {
  const ScanResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        title: const Text(
          "AI Scan Result",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Icon(
                  Icons.image,
                  size: 90,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 25),

            Card(
              color: Colors.green.shade50,
              elevation: 3,

              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Column(
                  children: [

                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 70,
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Disease Detected",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Foot and Mouth Disease",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "Confidence : 96%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [

                    Text(
                      "Detected Symptoms",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      "• Fever\n"
                      "• Mouth ulcers\n"
                      "• Excessive salivation\n"
                      "• Difficulty walking\n"
                      "• Loss of appetite",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [

                    Text(
                      "Recommended Treatment",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      "• Isolate infected animal\n"
                      "• Provide clean water\n"
                      "• Soft nutritious food\n"
                      "• Consult a veterinarian\n"
                      "• Regular vaccination",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
                        Card(
              color: Colors.blue.shade50,
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Icon(
                      Icons.local_hospital,
                      color: Colors.blue,
                      size: 40,
                    ),

                    SizedBox(width: 15),

                    Expanded(
                      child: Text(
                        "Veterinary Recommendation:\n\n"
                        "Consult a veterinarian immediately. "
                        "Early diagnosis and treatment can help "
                        "prevent the spread of infection.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
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
                      builder: (_) => const DiseaseInfoScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.menu_book),
                label: const Text("Learn More About Disease"),
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
                        "Report saved successfully!",
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