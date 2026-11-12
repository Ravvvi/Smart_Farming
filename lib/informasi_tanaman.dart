import 'package:flutter/material.dart';

class InformasiTanamanScreen extends StatelessWidget {
  const InformasiTanamanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informasi Tanaman')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ExpansionTile(
            leading: Icon(Icons.eco, color: Colors.red),
            title: Text('Tomat', style: TextStyle(fontWeight: FontWeight.bold)),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Butuh sinar matahari penuh. Pastikan memasang ajir dari batang bambu saat tanaman mulai tinggi agar batang tomat tidak patah karena menahan beban buah.'),
              )
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.eco, color: Colors.orange),
            title: Text('Cabai Rawit', style: TextStyle(fontWeight: FontWeight.bold)),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Tanah harus gembur dan tidak tergenang air. Sangat cocok ditanam di bedengan yang pinggirannya ditata dengan botol bekas sebagai penahan tanah.'),
              )
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.eco, color: Colors.purple),
            title: Text('Terong', style: TextStyle(fontWeight: FontWeight.bold)),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Perhatikan hama ulat pada daun. Siram rutin setiap pagi dan jaga drainase air menggunakan batuan alam di sekitar area plot tanam.'),
              )
            ],
          ),
        ],
      ),
    );
  }
}