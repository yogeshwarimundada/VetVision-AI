import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddAnimalScreen extends StatefulWidget {
  const AddAnimalScreen({super.key});

  @override
  State<AddAnimalScreen> createState() => _AddAnimalScreenState();
}

class _AddAnimalScreenState extends State<AddAnimalScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController breedController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController ownerController = TextEditingController();

  String species = "Dog";
  String gender = "Male";

  File? selectedImage;

  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image =
        await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        title: const Text(
          "Add Animal",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [

              GestureDetector(
                onTap: pickImage,

                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: selectedImage != null
                      ? FileImage(selectedImage!)
                      : null,

                  child: selectedImage == null
                      ? const Icon(
                          Icons.camera_alt,
                          size: 40,
                        )
                      : null,
                ),
              ),

              const SizedBox(height: 25),

              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Animal Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Enter animal name" : null,
              ),

              const SizedBox(height: 20),

              DropdownButtonFormField<String>(
                value: species,
                decoration: const InputDecoration(
                  labelText: "Species",
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: "Dog", child: Text("Dog")),
                  DropdownMenuItem(value: "Cat", child: Text("Cat")),
                  DropdownMenuItem(value: "Cow", child: Text("Cow")),
                  DropdownMenuItem(value: "Horse", child: Text("Horse")),
                  DropdownMenuItem(value: "Goat", child: Text("Goat")),
                ],
                onChanged: (value) {
                  setState(() {
                    species = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: breedController,
                decoration: const InputDecoration(
                  labelText: "Breed",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text("Male"),
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: const Text("Female"),
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Weight (kg)",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: ownerController,
                decoration: const InputDecoration(
                  labelText: "Owner Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Animal Added Successfully!",
                          ),
                        ),
                      );

                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                  ),
                  child: const Text(
                    "SAVE ANIMAL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
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