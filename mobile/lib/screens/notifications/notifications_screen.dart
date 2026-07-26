import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          NotificationCard(
            icon: Icons.vaccines,
            title: "Vaccination Reminder",
            subtitle: "Bruno's Rabies vaccine is due tomorrow.",
            time: "10 min ago",
            color: Colors.orange,
          ),

          SizedBox(height: 15),

          NotificationCard(
            icon: Icons.medical_services,
            title: "Health Report Ready",
            subtitle: "Kitty's health report has been generated.",
            time: "2 hours ago",
            color: Colors.green,
          ),

          SizedBox(height: 15),

          NotificationCard(
            icon: Icons.pets,
            title: "Scan Completed",
            subtitle: "Rocky's disease prediction is available.",
            time: "Yesterday",
            color: Colors.blue,
          ),

          SizedBox(height: 15),

          NotificationCard(
            icon: Icons.local_hospital,
            title: "Nearby Vet",
            subtitle: "A new veterinary clinic has been added nearby.",
            time: "2 days ago",
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String time;
  final Color color;

  const NotificationCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: Text(
          time,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}