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
      title: 'Aplikasi Profil Diri',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/profile.jpg',
              ), // Sesuaikan dengan asset Anda
              // Jika belum pakai asset, bisa pakai icon:
              // child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 16),

            // Nama Lengkap
            const Text(
              'Moch Baariq Rahman',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Status / Bio Singkat
            const Text(
              'Informatics Engineering Student',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Card 1: Email (Praktikum Sebelumnya)
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email'),
                subtitle: Text('baariq@gmail.com'),
              ),
            ),

            // Card 2: Telepon (Praktikum Sebelumnya)
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text('Telepon'),
                subtitle: Text('+62 812-3456-7890'),
              ),
            ),

            // --- TAMBAHAN BARU: Card Media Sosial ---

            // Card 3: Instagram
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(Icons.camera_alt, color: Colors.purple),
                title: Text('Instagram'),
                subtitle: Text('@baariq.rahman'), // Ubah sesuai akun Anda
              ),
            ),

            // Card 4: GitHub / LinkedIn
            const Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Icon(Icons.code, color: Colors.black87),
                title: Text('GitHub'),
                subtitle: Text(
                  'github.com/baariqrahman',
                ), // Ubah sesuai akun Anda
              ),
            ),
          ],
        ),
      ),
    );
  }
}
