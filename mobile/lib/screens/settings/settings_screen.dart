import 'package:flutter/material.dart';
import '../login/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          buildTile(
            Icons.person,
            "Account",
            "Manage your account",
          ),

          buildTile(
            Icons.notifications,
            "Notifications",
            "Notification preferences",
          ),

          buildTile(
            Icons.lock,
            "Privacy & Security",
            "Manage privacy settings",
          ),

          buildTile(
            Icons.language,
            "Language",
            "English",
          ),

          SwitchListTile(
            value: false,
            onChanged: (value) {},
            activeColor: const Color(0xFF2E7D32),
            title: const Text(
              "Dark Mode",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            secondary: const Icon(
              Icons.dark_mode,
              color: Color(0xFF2E7D32),
            ),
          ),

          buildTile(
            Icons.info,
            "About VetVision AI",
            "Version 1.0.0",
          ),

          const SizedBox(height: 30),

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
    );
  }

  Widget buildTile(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF2E7D32),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        onTap: () {},
      ),
    );
  }
}