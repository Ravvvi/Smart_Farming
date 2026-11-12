import 'package:flutter/material.dart';

class InformasiPanenScreen extends StatelessWidget {
  const InformasiPanenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informasi Panen')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.green,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('Catat Panen', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Pendapatan:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                    'Rp 125.000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green.shade800),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_basket, color: Colors.red),
                      title: Text('Panen Tomat (5 kg)'),
                      subtitle: Text('Dijual ke pasar terdekat.'),
                      trailing: Text('+ Rp 75.000', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_basket, color: Colors.orange),
                      title: Text('Panen Cabai Rawit (1 kg)'),
                      subtitle: Text('Konsumsi pribadi & tetangga.'),
                      trailing: Text('+ Rp 50.000', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}