import 'package:flutter/material.dart';

class VaccinationScreen extends StatelessWidget {
  const VaccinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Vaccination Records",
          style: TextStyle(color: Colors.white),
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

          SizedBox(height: 15),

          VaccinationCard(
            animalName: "Kitty",
            vaccine: "FVRCP Vaccine",
            vaccinatedOn: "20 June 2026",
            nextDue: "20 June 2027",
            status: "Completed",
          ),

          SizedBox(height: 15),

          VaccinationCard(
            animalName: "Rocky",
            vaccine: "DHPP Vaccine",
            vaccinatedOn: "05 May 2026",
            nextDue: "05 May 2027",
            status: "Upcoming",
          ),

          SizedBox(height: 15),

          VaccinationCard(
            animalName: "Lucy",
            vaccine: "Leptospirosis Vaccine",
            vaccinatedOn: "12 April 2026",
            nextDue: "12 April 2027",
            status: "Upcoming",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF2E7D32),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Add Vaccination feature coming soon."),
            ),
          );
        },
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          "Add Record",
          style: TextStyle(color: Colors.white),
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
    return status == "Completed"
        ? Colors.green
        : Colors.orange;
  }

  Color getStatusBackground() {
    return status == "Completed"
        ? Colors.green.shade100
        : Colors.orange.shade100;
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        vaccine,
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
              padding: const EdgeInsets.only(left: 34, top: 5),
              child: Text(vaccinatedOn),
            ),

            const SizedBox(height: 15),

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
              padding: const EdgeInsets.only(left: 34, top: 5),
              child: Text(nextDue),
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
                            "Vaccination certificate coming soon.",
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
                            "Reminder feature coming soon.",
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.notifications),
                    label: const Text("Reminder"),
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