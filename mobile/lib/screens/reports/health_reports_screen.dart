import 'package:flutter/material.dart';

class HealthReportsScreen extends StatelessWidget {
  const HealthReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Health Reports",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ReportCard(
            animalName: "Bruno",
            reportId: "VR-1001",
            disease: "Healthy",
            date: "24 July 2026",
            severity: "Low",
          ),

          SizedBox(height: 15),

          ReportCard(
            animalName: "Kitty",
            reportId: "VR-1002",
            disease: "Skin Infection",
            date: "22 July 2026",
            severity: "Medium",
          ),

          SizedBox(height: 15),

          ReportCard(
            animalName: "Rocky",
            reportId: "VR-1003",
            disease: "Fever",
            date: "18 July 2026",
            severity: "High",
          ),

          SizedBox(height: 15),

          ReportCard(
            animalName: "Lucy",
            reportId: "VR-1004",
            disease: "Healthy",
            date: "15 July 2026",
            severity: "Low",
          ),
        ],
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String animalName;
  final String reportId;
  final String disease;
  final String date;
  final String severity;

  const ReportCard({
    super.key,
    required this.animalName,
    required this.reportId,
    required this.disease,
    required this.date,
    required this.severity,
  });

  Color getSeverityColor() {
    switch (severity) {
      case "High":
        return Colors.red;
      case "Medium":
        return Colors.orange;
      default:
        return Colors.green;
    }
  }

  Color getSeverityBackground() {
    switch (severity) {
      case "High":
        return Colors.red.shade100;
      case "Medium":
        return Colors.orange.shade100;
      default:
        return Colors.green.shade100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF2E7D32),
                  child: Icon(
                    Icons.description,
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

                      const SizedBox(height: 4),

                      Text(
                        reportId,
                        style: const TextStyle(
                          color: Colors.grey,
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
                    color: getSeverityBackground(),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    severity,
                    style: TextStyle(
                      color: getSeverityColor(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                const Icon(
                  Icons.medical_services,
                  color: Color(0xFF2E7D32),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    disease,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [

                const Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                  size: 18,
                ),

                const SizedBox(width: 10),

                Text(date),
              ],
            ),

            const SizedBox(height: 25),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Report Viewer coming soon.",
                          ),
                        ),
                      );
                    },

                    icon: const Icon(Icons.visibility),

                    label: const Text("View"),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2E7D32),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Download feature coming soon.",
                          ),
                        ),
                      );
                    },

                    icon: const Icon(Icons.download),

                    label: const Text("Download"),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
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