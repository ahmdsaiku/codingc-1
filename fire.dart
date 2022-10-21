import 'package:flutter/material.dart';

class FirePage extends StatefulWidget {
  const FirePage({super.key});

  @override
  State<FirePage> createState() => _FirePageState();
}

class _FirePageState extends State<FirePage> {
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
                        'assets/fire.png',
                        scale: 1.0,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'FIREFIGHTER',
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
                      'Pemadam kebakaran atau disebut juga dengan Damkar adalah salah seorang/pasukan yang memiliki profesi dan tugas memadamkan kebakaran, melakukan penyelamatan, memberikan pertolongan pada saat terjadi bencana dan kejadian musibah lainnya.',
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
                      'Perumusan kebijakan Bidang Pencegahan, Bidang Operasional dan Penyelamatan, Bidang Prasarana dan Sarana, dan Bidang Pemberdayaan dan Partisipasi Masyarakat.',
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
