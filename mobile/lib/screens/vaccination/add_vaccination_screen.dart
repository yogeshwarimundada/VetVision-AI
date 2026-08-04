import 'package:flutter/material.dart';

class AddVaccinationScreen extends StatefulWidget {
  const AddVaccinationScreen({super.key});

  @override
  State<AddVaccinationScreen> createState() =>
      _AddVaccinationScreenState();
}

class _AddVaccinationScreenState
    extends State<AddVaccinationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController animalController =
      TextEditingController();

  final TextEditingController vaccineController =
      TextEditingController();

  final TextEditingController vaccinatedOnController =
      TextEditingController();

  final TextEditingController nextDueController =
      TextEditingController();

  final TextEditingController notesController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Add Vaccination",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [

              TextFormField(
                controller: animalController,
                decoration: const InputDecoration(
                  labelText: "Animal Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.pets),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter animal name";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: vaccineController,
                decoration: const InputDecoration(
                  labelText: "Vaccine Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.vaccines),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter vaccine name";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: vaccinatedOnController,
                decoration: const InputDecoration(
                  labelText: "Vaccinated On",
                  hintText: "DD/MM/YYYY",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: nextDueController,
                decoration: const InputDecoration(
                  labelText: "Next Due Date",
                  hintText: "DD/MM/YYYY",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.event),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: notesController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Notes",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.note),
                ),
              ),

              const SizedBox(height: 30),
                            SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Vaccination record added successfully!",
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );

                      Navigator.pop(context);
                    }
                  },
                  icon: const Icon(Icons.save),
                  label: const Text(
                    "Save Record",
                    style: TextStyle(fontSize: 18),
                  ),
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

  @override
  void dispose() {
    animalController.dispose();
    vaccineController.dispose();
    vaccinatedOnController.dispose();
    nextDueController.dispose();
    notesController.dispose();
    super.dispose();
  }
}