import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditAnimalScreen extends StatefulWidget {
  const EditAnimalScreen({super.key});

  @override
  State<EditAnimalScreen> createState() => _EditAnimalScreenState();
}

class _EditAnimalScreenState extends State<EditAnimalScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController =
      TextEditingController(text: "Bruno");

  final TextEditingController breedController =
      TextEditingController(text: "Labrador Retriever");

  final TextEditingController ageController =
      TextEditingController(text: "4");

  final TextEditingController weightController =
      TextEditingController(text: "28");

  final TextEditingController ownerController =
      TextEditingController(text: "Yogeshwari");

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
          "Edit Animal",
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
                      ? const Icon(Icons.camera_alt, size: 40)
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
                          content:
                              Text("Animal Updated Successfully!"),
                        ),
                      );

                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                  ),
                  child: const Text(
                    "UPDATE ANIMAL",
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