import 'package:flutter/material.dart';

class VaccinationScreen extends StatelessWidget {
  const VaccinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Vaccination Records",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          VaccinationCard(
            animalName: "Bruno",
            vaccine: "Rabies Vaccine",
            vaccinatedOn: "10 July 2026",
            nextDue: "10 July 2027",
            status: "Completed",
          ),

          VaccinationCard(
            animalName: "Kitty",
            vaccine: "FVRCP Vaccine",
            vaccinatedOn: "20 June 2026",
            nextDue: "20 June 2027",
            status: "Completed",
          ),

          VaccinationCard(
            animalName: "Rocky",
            vaccine: "DHPP Vaccine",
            vaccinatedOn: "05 May 2026",
            nextDue: "05 May 2027",
            status: "Upcoming",
          ),

          VaccinationCard(
            animalName: "Lucy",
            vaccine: "Leptospirosis Vaccine",
            vaccinatedOn: "12 April 2026",
            nextDue: "12 April 2027",
            status: "Overdue",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF2E7D32),
        elevation: 6,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(
                "Add Vaccination feature will be connected soon.",
              ),
            ),
          );
        },
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          "Add Record",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class VaccinationCard extends StatelessWidget {
  final String animalName;
  final String vaccine;
  final String vaccinatedOn;
  final String nextDue;
  final String status;

  const VaccinationCard({
    super.key,
    required this.animalName,
    required this.vaccine,
    required this.vaccinatedOn,
    required this.nextDue,
    required this.status,
  });

  Color getStatusColor() {
    switch (status) {
      case "Completed":
        return Colors.green;

      case "Upcoming":
        return Colors.orange;

      case "Overdue":
        return Colors.red;

      default:
        return Colors.grey;
    }
  }

  Color getStatusBackground() {
    switch (status) {
      case "Completed":
        return Colors.green.shade100;

      case "Upcoming":
        return Colors.orange.shade100;

      case "Overdue":
        return Colors.red.shade100;

      default:
        return Colors.grey.shade200;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Color(0xFF2E7D32),
                  child: Icon(
                    Icons.vaccines,
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
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        vaccine,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
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
                    color: getStatusBackground(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: getStatusColor(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const Divider(height: 30),
                        Row(
              children: const [
                Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "Vaccinated On",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 34,
                top: 6,
              ),
              child: Text(
                vaccinatedOn,
                style: const TextStyle(fontSize: 15),
              ),
            ),

            const SizedBox(height: 18),

            Row(
              children: const [
                Icon(
                  Icons.event_available,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "Next Due",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 34,
                top: 6,
              ),
              child: Text(
                nextDue,
                style: const TextStyle(fontSize: 15),
              ),
            ),

            const SizedBox(height: 24),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                            "Vaccination certificate will be available soon.",
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.description),
                    label: const Text("View"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2E7D32),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(0, 48),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text(
                            "Reminder feature will be connected soon.",
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.notifications_active),
                    label: const Text("Reminder"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(0, 48),
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