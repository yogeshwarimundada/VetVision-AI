import 'package:flutter/material.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Help & Support",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFF2E7D32),
            child: Icon(
              Icons.support_agent,
              color: Colors.white,
              size: 55,
            ),
          ),

          const SizedBox(height: 20),

          const Center(
            child: Text(
              "How can we help you?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 30),

          buildTile(
            Icons.question_answer,
            "Frequently Asked Questions",
            "Find answers to common questions",
          ),

          buildTile(
            Icons.email,
            "Email Support",
            "support@vetvisionai.com",
          ),

          buildTile(
            Icons.phone,
            "Call Support",
            "+91 1800 123 4567",
          ),

          buildTile(
            Icons.bug_report,
            "Report a Bug",
            "Help us improve VetVision AI",
          ),

          buildTile(
            Icons.feedback,
            "Send Feedback",
            "Share your experience",
          ),

          const SizedBox(height: 30),
                    SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Support request feature will be available soon.",
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.support_agent),
              label: const Text("Contact Support"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2E7D32),
                foregroundColor: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 55,
            child: OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Back"),
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildTile(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
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