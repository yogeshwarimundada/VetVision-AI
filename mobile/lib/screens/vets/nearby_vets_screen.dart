import 'package:flutter/material.dart';

class NearbyVetsScreen extends StatelessWidget {
  const NearbyVetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Nearby Veterinary Clinics",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search nearby veterinary clinics...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [

                VetCard(
                  clinicName: "Pune Pet Care Clinic",
                  address: "Baner, Pune",
                  distance: "2.3 km",
                  rating: "4.8",
                  emergency: true,
                ),

                SizedBox(height: 16),

                VetCard(
                  clinicName: "Happy Paws Veterinary Hospital",
                  address: "Kothrud, Pune",
                  distance: "5.1 km",
                  rating: "4.6",
                  emergency: false,
                ),

                SizedBox(height: 16),

                VetCard(
                  clinicName: "Animal Care Centre",
                  address: "Hinjewadi, Pune",
                  distance: "7.4 km",
                  rating: "4.7",
                  emergency: true,
                ),

                SizedBox(height: 16),

                VetCard(
                  clinicName: "City Veterinary Clinic",
                  address: "Shivajinagar, Pune",
                  distance: "9.2 km",
                  rating: "4.5",
                  emergency: false,
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF2E7D32),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Google Maps integration coming soon.",
              ),
            ),
          );
        },
        icon: const Icon(Icons.map, color: Colors.white),
        label: const Text(
          "Find More",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class VetCard extends StatelessWidget {
  final String clinicName;
  final String address;
  final String distance;
  final String rating;
  final bool emergency;

  const VetCard({
    super.key,
    required this.clinicName,
    required this.address,
    required this.distance,
    required this.rating,
    required this.emergency,
  });

  @override
  Widget build(BuildContext context) {
        return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
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
                    Icons.local_hospital,
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
                        clinicName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        address,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
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
                    color: emergency
                        ? Colors.red.shade100
                        : Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    emergency ? "24×7" : "Open",
                    style: TextStyle(
                      color: emergency
                          ? Colors.red
                          : Colors.green,
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
                  Icons.location_on,
                  color: Color(0xFF2E7D32),
                ),

                const SizedBox(width: 6),

                Text(
                  distance,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Spacer(),

                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),

                const SizedBox(width: 5),

                Text(
                  rating,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 22),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Calling $clinicName...",
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.call),
                    label: const Text("Call"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2E7D32),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(0, 48),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Maps integration coming soon.",
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.directions),
                    label: const Text("Directions"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(0, 48),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Appointment booking for $clinicName coming soon.",
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.calendar_today),
                label: const Text("Book Appointment"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}