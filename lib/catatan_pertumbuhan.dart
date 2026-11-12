import 'package:flutter/material.dart';

class CatatanPertumbuhanScreen extends StatelessWidget {
  const CatatanPertumbuhanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catatan Pertumbuhan')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('14', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Pindah Tanam Cabai'),
            subtitle: Text('14 November 2026 - Bibit dipindah ke bedengan utama berbatas botol.'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              child: Text('10', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Tunas Tomat Muncul'),
            subtitle: Text('10 November 2026 - Tunas sudah mencapai 5 cm di sebelah ajir bambu.'),
          ),
        ],
      ),
    );
  }
}