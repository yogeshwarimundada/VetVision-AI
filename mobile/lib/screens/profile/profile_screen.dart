import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2E7D32),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 30),

            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF2E7D32),
              child: Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Yogeshwari Mundada",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "yogeshwari@email.com",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [

                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text("Phone"),
                    subtitle: const Text("+91 9876543210"),
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: const Text("Location"),
                    subtitle: const Text("Pune, Maharashtra"),
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(Icons.pets),
                    title: const Text("Animals Registered"),
                    subtitle: const Text("3 Animals"),
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(Icons.calendar_today),
                    title: const Text("Member Since"),
                    subtitle: const Text("July 2026"),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 25),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [

                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text("Edit Profile"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Edit Profile coming soon!",
                          ),
                        ),
                      );
                    },
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Settings coming soon!",
                          ),
                        ),
                      );
                    },
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text("Help & Support"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Help & Support coming soon!",
                          ),
                        ),
                      );
                    },
                  ),

                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: 320,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}