import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, size: 60, color: Colors.white),
              ),
              const SizedBox(height: 16),
              const Text(
                'Muhammad Ubaydillah',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Mahasiswa Teknik Informatika',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text('Email'),
                  subtitle: Text('ubay@gmail.com'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text('Phone'),
                  subtitle: Text('089626077624'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.location_on, color: Colors.blue),
                  title: Text('Alamat'),
                  subtitle: Text('Jl Aria Santika'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.school, color: Colors.blue),
                  title: Text('Kampus'),
                  subtitle: Text('Institut Bina Sarana Global'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




