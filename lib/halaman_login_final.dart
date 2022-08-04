import 'package:flutter/material.dart';

class HalamanLogin2 extends StatefulWidget {
  const HalamanLogin2({Key? key}) : super(key: key);

  @override
  State<HalamanLogin2> createState() => _HalamanLogin2State();
}

class _HalamanLogin2State extends State<HalamanLogin2> {
  Color warnautama = Colors.red;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: warnautama,
        title: const Text('HALAMAN LOGIN USER'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                        hintText: 'EMAIL',
                        fillColor: Colors.orange,
                        icon: const Icon(Icons.email, color: Colors.orange,size: 35,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                  return 'Tidak boleh dikosongkan';
                }
                return null;
                },
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                        hintText: 'PASSWORD',
                        fillColor: Colors.orange,
                        icon: const Icon(Icons.email, color: Colors.orange,size: 35,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                  return 'Tidak boleh dikosongkan';
                }
                return null;
                },
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.next,
              ),        
              const SizedBox(height: 30,),
              ElevatedButton(
              // ignore: sort_child_properties_last
              child: const Text('LOGIN'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('dayang');
                }
              }, 
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 17, 30, 108),
                onPrimary: Colors.white,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ))
            ),
            ],
          ),
        ),
      ),
    );
  }
}