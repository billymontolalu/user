import 'dart:io';

import 'halaman_biodata.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HalamanDaftarUser extends StatefulWidget {
  const HalamanDaftarUser({Key? key}) : super(key: key);

  @override
  State<HalamanDaftarUser> createState() => _HalamanDaftarUserState();
}

class _HalamanDaftarUserState extends State<HalamanDaftarUser> {
  Color warnautama = Colors.red;
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnautama,
        title: const Text('HALAMAN DAFTAR USER'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
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
                  labelText: 'Password',
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
                  labelText: 'Re-Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                //keyboardType: TextInputType.number,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text('DAFTAR'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HalamanBiodata()));
                  },
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
