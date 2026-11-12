import 'package:flutter/material.dart';

class JadwalPemupukanScreen extends StatelessWidget {
  const JadwalPemupukanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jadwal Pemupukan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: Colors.orange.shade50,
            child: const ListTile(
              leading: Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 40),
              title: Text('Pemupukan NPK - Terong'),
              subtitle: Text('Besok, 16:00 WIB (Siklus 14 Hari)'),
            ),
          ),
          const SizedBox(height: 10),
          const Card(
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green, size: 40),
              title: Text('Pupuk Kompos Dasar - Bedengan'),
              subtitle: Text('Selesai pada 10 November 2026'),
            ),
          ),
        ],
      ),
    );
  }
}