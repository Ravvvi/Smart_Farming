import 'package:flutter/material.dart';

class JadwalPenyiramanScreen extends StatelessWidget {
  const JadwalPenyiramanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jadwal Penyiraman')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTaskTile('Pagi: Siram Tomat & Cabai', '06:00 WIB', true),
          _buildTaskTile('Pagi: Siram Terong', '06:30 WIB', true),
          _buildTaskTile('Sore: Cek Kelembapan Tanah', '16:00 WIB', false),
        ],
      ),
    );
  }

  Widget _buildTaskTile(String title, String time, bool isDone) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          isDone ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isDone ? Colors.green : Colors.grey,
        ),
        title: Text(
          title,
          style: TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
        ),
        subtitle: Text(time),
        trailing: const Icon(Icons.water_drop, color: Colors.blue),
      ),
    );
  }
}