import 'package:flutter/material.dart';

class SoldierPage extends StatefulWidget {
  const SoldierPage({super.key});

  @override
  State<SoldierPage> createState() => _SoldierPageState();
}

class _SoldierPageState extends State<SoldierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo.shade50,
        onPressed: () {},
        tooltip: 'call',
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.call,
          color: Colors.green,
          size: 40,
        ),
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      color: Colors.indigo,
                      size: 28,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Center(
                      child: Image.asset(
                        'assets/solder.png',
                        scale: 1.0,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'SOLDIER',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'PERAN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'TNI berperan sebagai alat negara di bidang pertahanan yang dalam menjalankan tugasnya berdasarkan kebijakan dan keputusan politik negara.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'FUNGSI',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'penangkal terhadap setiap bentuk ancaman militer dan ancaman bersenjata dari luar dan dalam negeri terhadap kedaulatan, keutuhan wilayah, dan keselamatan bangsa.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
