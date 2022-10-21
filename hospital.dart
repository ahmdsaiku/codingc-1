import 'package:flutter/material.dart';

class HospitalPage extends StatefulWidget {
  const HospitalPage({super.key});

  @override
  State<HospitalPage> createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
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
                        'assets/doctor.png',
                        scale: 1.0,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'DOCTOR',
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
                      'Dokter merupakan tenaga medis yang sangat diperlukan oleh masyarakat, tidak hanya didesa saja yang dikota pun merasakan kekurang tenaga medis terutama dokter-dokter umum maupun dokter-dokter spesialis.',
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
                      'Memiliki keahlian anamnesis atau wawancara medis guna mencari tahu keluhan penyakit dan informasi lain berkaitan dengan penyakit yang dialami pasien.',
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
