import 'package:flutter/material.dart';

import '../animals/animals_screen.dart';
import '../login/login_screen.dart';
import '../profile/profile_screen.dart';
import '../scan/scan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        elevation: 0,
        title: const Text(
          "VetVision AI",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Hello, Yogeshwari 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Keep your animals healthy with AI",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.1,
              children: [

                dashboardCard(
                  context,
                  Icons.camera_alt,
                  "Scan Animal",
                  const ScanScreen(),
                ),

                dashboardCard(
                  context,
                  Icons.pets,
                  "My Animals",
                  const AnimalsScreen(),
                ),

                dashboardCard(
                  context,
                  Icons.history,
                  "Scan History",
                  const ComingSoonScreen(
                    title: "Scan History",
                  ),
                ),

                dashboardCard(
                  context,
                  Icons.medical_services,
                  "Health Reports",
                  const ComingSoonScreen(
                    title: "Health Reports",
                  ),
                ),

                dashboardCard(
                  context,
                  Icons.vaccines,
                  "Vaccination",
                  const ComingSoonScreen(
                    title: "Vaccination",
                  ),
                ),

                dashboardCard(
                  context,
                  Icons.location_on,
                  "Nearby Vets",
                  const ComingSoonScreen(
                    title: "Nearby Vets",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginScreen(),
                    ),
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        backgroundColor: Colors.white,

        elevation: 12,

        type: BottomNavigationBarType.fixed,

        selectedItemColor: const Color(0xFF2E7D32),

        unselectedItemColor: Colors.grey,

        showSelectedLabels: true,

        showUnselectedLabels: true,

        onTap: (index) {
          switch (index) {
            case 0:
              break;

            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ScanScreen(),
                ),
              );
              break;

            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ComingSoonScreen(
                    title: "Scan History",
                  ),
                ),
              );
              break;

            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfileScreen(),
                ),
              );
              break;
          }
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: "Scan",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget dashboardCard(
    BuildContext context,
    IconData icon,
    String title,
    Widget page,
  ) {
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
              builder: (_) => page,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              size: 50,
              color: const Color(0xFF2E7D32),
            ),

            const SizedBox(height: 15),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ComingSoonScreen extends StatelessWidget {
  final String title;

  const ComingSoonScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.construction,
                size: 100,
                color: Color(0xFF2E7D32),
              ),

              const SizedBox(height: 25),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "This feature is under development and will be available soon.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 220,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("Back"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}