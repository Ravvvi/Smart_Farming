import 'package:flutter/material.dart';

import 'jadwal_penyiraman.dart';
import 'informasi_tanaman.dart';
import 'catatan_pertumbuhan.dart';
import 'jadwal_pemupukan.dart';
import 'informasi_panen.dart';

void main() {
  runApp(const SmartGardenApp());
}

class SmartGardenApp extends StatelessWidget {
  const SmartGardenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Garden',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class FeatureCategory {
  final String title;
  final String description;
  final IconData icon;
  final Widget targetScreen;

  FeatureCategory({
    required this.title,
    required this.description,
    required this.icon,
    required this.targetScreen,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FeatureCategory> categories = [
      FeatureCategory(
        title: 'Jadwal Penyiraman',
        description: 'Mengingatkan kapan tanaman harus disiram.',
        icon: Icons.water_drop,
        targetScreen: const JadwalPenyiramanScreen(),
      ),
      FeatureCategory(
        title: 'Informasi Tanaman',
        description: 'Menampilkan cara merawat tomat, cabai, dan terong.',
        icon: Icons.local_florist,
        targetScreen: const InformasiTanamanScreen(),
      ),
      FeatureCategory(
        title: 'Catatan Pertumbuhan',
        description: 'Mencatat perkembangan dari awal ditanam.',
        icon: Icons.timeline,
        targetScreen: const CatatanPertumbuhanScreen(),
      ),
      FeatureCategory(
        title: 'Jadwal Pemupukan',
        description: 'Mengingatkan waktu pemberian pupuk.',
        icon: Icons.eco,
        targetScreen: const JadwalPemupukanScreen(),
      ),
      FeatureCategory(
        title: 'Informasi Panen',
        description: 'Mencatat jumlah hasil panen dan penjualannya.',
        icon: Icons.shopping_basket,
        targetScreen: const InformasiPanenScreen(),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Smart Garden', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green.shade600,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      // Membungkus dengan Center dan ConstrainedBox untuk simulasi layar HP
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450), // Memaksa lebar maksimal seperti layar mobile
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Mengunci agar selalu 2 kolom (Format Mobile)
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.85,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => category.targetScreen),
                    );
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.green.withOpacity(0.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(color: Colors.green.shade50, shape: BoxShape.circle),
                            child: Icon(category.icon, size: 36, color: Colors.green.shade700),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            category.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}