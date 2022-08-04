import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HalamanBiodata extends StatefulWidget {
  const HalamanBiodata({Key? key}) : super(key: key);

  @override
  State<HalamanBiodata> createState() => _HalamanBiodataState();
}

class _HalamanBiodataState extends State<HalamanBiodata> {
  Color warnautama = Colors.red;
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnautama,
        title: const Text('INPUT BIODATA USER'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'NIM',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'No. HP',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                keyboardType: TextInputType.number,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () async {
                  final XFile? pickfile = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (pickfile == null) return;
                  setState(() {
                    _image = File(pickfile.path);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: _image != null
                          ? DecorationImage(
                              image: FileImage(_image!), fit: BoxFit.fill)
                          : const DecorationImage(
                              image: ExactAssetImage('gambar/profil.jpg'))),
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text('SUBMIT'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 17, 30, 108),
                      onPrimary: Colors.white,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}